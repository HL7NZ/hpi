# Repository for HPI IG  

## Current Release
1.4.0
## Pre requisites
    
* Install sushi
* Install Node.js (used by scripts)
* Install IG publisher (if using local builds)  
 
## Running a build

There are 2 parts to running the build process
* Run sushi to generate the FHIR resource files (eg StructureDefinition) from the .fsh files
* Run the IG Publisher to perform the build

### 1. Running sushi and scripts
There is a script in the root (runSushi.sh) that will run sushi to produce the FHIR artifacts, and then run a number of script files that produce the summary pages. If there are sushi errors, they must be fixed before proceeding.

### 2. Run IG Publisher locally
Assuming that IG publisher is installed, the ./build.sh script will run the IG Publisher app - which is a .jar file. Note that the script assumes that the .jar file is in a folder 'publisher' which is a peer to the IG root. This is because I build a number of IG's so it's convenient to have only a single copy of the .jar file.

The main documentation for the IG Publisher is [here](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) (Note that not all the info in there is current)




## Updating git

After making changes, update the git repo using the steps below. As well as saving the files, this will automatically kick off an instance of IG publisher that runs on the web. Assuming it runs without errors, the copy of the IG in the [build environment](http://build.fhir.org/ig/HL7NZ/hpi/branches/master/index.html) is updated automatically.

Note that the build IG Publisher will place notifications and links in the [notification stream](https://chat.fhir.org/#narrow/stream/179297-committers.2Fnotification) of the FHIR chat. This includes links to the completed IG as well as to the error log (if any)

> Indeed, if there are issues getting IG Publisher running locally, then just running sushi and committing changes to the repo will get the IG built and published (assuming there are no errors). The only downside is that you have to wait for the build process to finish, which can take a few minutes depending on the current load. The local IG Publisher will always run faster.

## Folders & key files

### root

### fsh-generated

The files that are produced by sushi are placed here. The resources subfolder holds the
generated resources - the includes is for the IG specific files 

### input

The main input files for the IG. The IG publisher will use the contents of this folder and
sub folders during the build (in addition to the files created by sushi in the /fsh-generated folder).

There are a number of sub-folders of interest

#### input/fsh

Holds all the fsh files (can be in any folder). There are further sub folders for different
resource types - should be pretty obvious where they belong. Sushi will recurse through any sub-folders
off this folder when building the resources

#### input/images

Holds images used by the IG - including those that are in user-provided files. see /input/pagecontent/usecases.md for an example of how to reference them within the IG

#### input/pagecontent

Holds all 'documentation' files - ie user created - for the IG. These include both files that
are authored by a person (see the usecases.md for an example) and the files created by scripts
executed from the ./runsushi.sh 
shell script. (Note: You may need to convert this to a .bat file on windows)

You can include either markdown and XML files - the IG Publisher is quite picky about 
the xml versions. I usually use MD - keeping xml for generated files that use a table.



### scriptCopy

Holds a copy of scripts used to generate summary pages for the IG.
executed by the ./runSushi.sh batch file (if sushi builds OK)


### output

This holds the completed IG, and is created by the IG Publisher. The file 'index.html' is the IG home page.

### template
Created and populated by the IG Publisher. Excluded from the repo

## Simplifier

The simplifier platform is an alternative way of producing IG's that doesn't use the IG Publisher. This has the advantage that it's easier to use, but doesn't (AFAIK) use FSH - rather uses UI tools to build the artifacts directly. In the past I've found this a pain, and so I continue to use the official tooling. The IG Publisher also does a lot of validation, which is excellent for IG Quality (at the expense of the pain of tracking down errors!)

However, as Simplifier is the current NZ registry, we do need to populate it, and this is done by importing the /output/package.tgz file into simplifier. This will import all the FHIR resources, but not the textual material. The process for doing this is outside the scope of these notes.

## Importing terminology resources

The 'master' copies of terminology (ValueSets, CodeSystems) are maintained by MOH and included
in the IG for ease of access to the implementer. These artifacts can be in one of 2 different locations:
* The NZBase IG where they are used in extensions that are defined there - but used by the HPI
* The HPI IG (this one) when they are used in locally defined extensions, or used in the HPI profiles 

The process for importing them into the IGs is as follows.

1. Receive the zip file containing them, and unzip
2. Using goFsh, convert them to .fsh files. This better incorporates them into the overall build process - for example when generating the terminology summary page which expects json versions, rather than the XML ones from MOH. 
3. Place the fsh in the appropriate input/fsh/terminology folder of the IG