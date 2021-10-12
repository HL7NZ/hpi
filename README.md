# HPI Notes



## Importing terminology

The 'master' copies of terminology (ValueSets, CodeSystems) are maintained by MOH and included
in the IG for ease of access to the implementer. These artifacts can be in one of 2 different locations:
* The NZBase IG where they are used in extensions that are defined there - but used by the HPI
* The HPI IG (this one) when they are used in locally defined extensions, or used in the HPI profiles 

The process for importing them into the IGs is as follows.

1. Receive the zip file containing them, and unzip
2. Using goFsh, convert them to .fsh files. This better incorporates them into the overall build process - for example when generating the terminology summary page which expects json versions, rather than the XML ones from MOH. 
3. Place the fsh in the appropriate input/fsh/terminology folder of the IG