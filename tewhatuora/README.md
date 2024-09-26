# tewhatuora.fhir.template

Template for FHIR IGs based on Te Whatu Ora branding guidelines.

## Instructions

1. Copy the contents of this repo into a directory called `tewhatuora` in the top level of your IG's source.
2. Update igi.ini to point the new template by changing the template line to: `template = tewhatuora`

### logos and customisation

Logo images are appended from the `content/includes/_apppend.fragment-header.html` file. These can be replaced as appropriate by adding an image to the `content/assets/images` directory and referenncing from the header fragment. 

Anything added to the template directory will be added/replaced to the base template using the following logic: 
* When the custom template has a file that does not exist in the base, this file from the custom template gets added to the template
* When the custom template has a file that exists in the base, the base file gets replaced by the file from the custom template
* When the custom template has a file named _append.xyz , the content of this file is added to the file named xyz in the base

## To do

Currently the template isn't in https://registry.fhir.org FHIR package registry, so you need to include it and reference it by the filepath (the directory tewhatuora in your IG). Once added to the registry it will be possible to reference by id and the IG publisher will load it for you you (using `template = tewhatuora.fhir.template`)