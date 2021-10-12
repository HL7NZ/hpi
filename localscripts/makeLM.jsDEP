#!/usr/bin/env node

/**
Create a logical model suitable for the IG builder

 */
let fs = require('fs');
let syncRequest = require('../../scripts/node_modules/sync-request');

let serverRoot = "http://home.clinfhir.com:8054/baseR4/";   //the server to upload FSH & SD

let domain = "http://hl7.org.nz/fhir/hpi/"

//the models to export. 
let arModels = ['HpiPractitioner','HpiPractitionerRole','HpiLocation','HpiOrganization','HpiEndpoint'];

arModels.forEach(function(modelId){
    makeModel(modelId)
})

function makeModel(modelId) {
    console.log(modelId)
    let LMID = modelId + "LM";      //Add LM to the ID to distinguish it from the profiles...
    let outFile = "../fsh/ig-data/input/models/StructureDefinition-" + LMID + '.json'
    let options = {};
    options.headers = {"content-type": "application/json+fhir"}
    options.timeout = 20000;        //20 seconds
    
    let url = serverRoot + "StructureDefinition/"+modelId;
    console.log(url)
    let response = syncRequest('GET', url, options);
    console.log(response.statusCode)
    if (response.statusCode !== 200 ) {
        console.log('  error' + response.body.toString())
    } else {
        let model = JSON.parse(response.body.toString())
        let newModel = JSON.parse(JSON.stringify(model));
        delete newModel.extension;
        delete newModel.snapshot;
        delete newModel.identifier;
        delete newModel.keyword;
        newModel.description = model.description || model.purpose;
        newModel.id = LMID;
        newModel.url = domain + "StructureDefinition/" + LMID;
        newModel.name = LMID
        newModel.title =  LMID;
        newModel.differential = {element:[]}
    
        model.snapshot.element.forEach(function(ed,inx){
            if (inx ==0) {
                delete ed.label;
            }
            delete ed.extension
            newModel.differential.element.push(ed)
        })

        fs.writeFileSync(outFile,JSON.stringify(newModel))
        console.log("Write: " + outFile)
    }
}

