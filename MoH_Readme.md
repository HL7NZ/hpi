# Building the IG

The HPI profiles are defined using the FSH (Fire Shorthand).  These are compiled into json [conformance modules](https://hl7.org/fhir/R4/conformance-module.html#:~:text=The%20Conformance%20Module%20represents%20metadata,used%20to%20create%20derived%20specifications.) (Structure Definitions, Value Sets , Code Sets and Capability Statements ...)  using sushi.  The Json files are used as input  to the IGPublisher tool which creates the static HTML files forthe IG web site

Prerequisites
-----------------
### HL7 FHIR Tools

You need to first  install the following tools:

1. sushi 
   See the installation instructions [here](http://hl7.org/fhir/uv/shorthand/2020May/tutorial.html):
   sushi is an FSH compiler. It takes the 

2. IG Publisher

   See the installation instructions [here](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)


### GitHub

You need a GitHub account with read write access to the repo.
Your account will need a PAT (personal access token) which you will use as the git credential



### HL7 NZBase

The HPI Profiles refer  to the HL7 NZ base profile. Currently this has to be installed manually

1. Download json from the HL7 NZ Base  IG website
   http://build.fhir.org/ig/HL7NZ/nzbase/branches/master/extensions.html
   (support tab -> download artifacts (Json))

2. unzipped to the json package to 
   `C:\Users\<user>\.fhir\packages\ hl7.org.nz.fhir.ig.base#current \package` 

3. . You may need to add a package.json file {

   	"name": "hl7.org.nz.fhir.ig.base",
   	"version": "0.9.0",
   	"canonical": "http://build.fhir.org/ig/HL7NZ/nzbase/branches/master",
   	"title": "HL7 FHIR New Zealand Base Implementation Guide",
   	"description": "temp",
   	"dependencies": {
   		"hl7.fhir.core": "4.0.1"
   	},
   	"author": "HL7 NZ"
   }

## Build Instructions

1. run sushi - from a bash shell (use GitBash if on windows) , from your project root directory, run
   `./runSushi.sh`

2. run publisher. This creates the file  full-ig.zip which contains the IG web site static files

   `java -jar C:/apps/FHIR_IG_Publisher/publisher.jar -ig . -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128`

3. Commit your  changes to the branch you wish to publish from 



How to Publish
----------------
1. Run the CFN template `/hip-build-env-infra/04.hpi/8-create-hpi-ig-amplify.yaml`l in the environment you wish to publish to,
2. Configure the template parameters - you will typically only change the release branch either

`ReleaseBranchName` or

`SnapshotBranchName`

 depending on the kind of release you are doing
​    


After sushi and IG Publisher have been, run,  deploy the generated structure definitions to nexus, with the command

mvm clean deploy

The  deployed artifact is is a zip of the xml files from output folder


\



To do
- tidy this up with markdown