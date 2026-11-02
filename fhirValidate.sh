#!/bin/bash
set -euo pipefail
set -x

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_DIR="$SCRIPT_DIR/output"
VALIDATOR_JAR="${FHIR_VALIDATOR_JAR:-$HOME/validator_cli.jar}"
FHIR_PROXY="${FHIR_PROXY:-WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128}"
PACKAGE="$OUTPUT_DIR/package.tgz"

if [[ ! -f "$VALIDATOR_JAR" ]]; then
	echo "FHIR validator jar not found: $VALIDATOR_JAR (set FHIR_VALIDATOR_JAR to override)" >&2
	exit 1
fi
if [[ ! -f "$PACKAGE" ]]; then
	echo "FHIR IG package not found: $PACKAGE; IG Publisher must generate package.tgz before example validation" >&2
	exit 1
fi

tmp_dir="$OUTPUT_DIR/temp"
trap 'rm -rf "$tmp_dir"' EXIT
mkdir -p "$tmp_dir"

validate_examples() {
	local resource_name="$1"
	local profile="$2"
	local report="$3"
	local -a files=("$OUTPUT_DIR"/"$resource_name"-*.json)
	local -a args=("$tmp_dir" -ig "$PACKAGE" -profile "$profile" -proxy "$FHIR_PROXY" -html-output "$OUTPUT_DIR/$report")

	if [[ ! -f "${files[0]}" ]]; then
		echo "No ${resource_name} examples found under $OUTPUT_DIR" >&2
		return 1
	fi

	echo "validating ${resource_name} examples"
	rm -f "$tmp_dir"/*.json
	cp "${files[@]}" "$tmp_dir/"
	if [[ "${ALLOW_PRIVATE_PROXY_SSRF_BYPASS:-false}" == "true" ]]; then
		args+=(-ssrf-protection-enabled false)
	fi
	java -jar "$VALIDATOR_JAR" "${args[@]}"
}

validate_examples Practitioner http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner validation_HPIPractitioner.html
validate_examples Organization http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization validation_HPIOrganization.html
validate_examples Location http://hl7.org.nz/fhir/StructureDefinition/HPILocation validation_HPILocation.html
validate_examples PractitionerRole http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole validation_HPIPractitionerRole.html
