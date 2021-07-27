reviewing MOH files

To process the MOH input zip file

GOAL: to have the MOH supplied resources in Json formal in the ~/hpi/mohSupplied folder

1. download the zip file and uncompress
2. copy all the files into ~/IG/mohVS/hip
3. clear the gofsh folder
4. execute gofsh: gofsh hip -s file-per-definition -t xml-only
5. copy all the FSH files into the ~/IG/mohTerminology/input/fsh
6. execute sushi from the root folder of ~/IG/mohTerminolog. This will create the json files in the fsh-generated folder
7. copy all the files from fsh-generated to ~/hpi/mohSupplied
8. done!


