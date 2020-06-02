# ./makeTerminologySummary.js

echo "Making terminology summary"   # will copy into IG input folder
./makeTerminologySummary.js


JAVA -jar input-cache/org.hl7.fhir.publisher.jar -ig .
