#!/usr/bin/env node
/**
 * generates the terminology tab page
 * Copied from the scripts folder Oct-7 and subsequently modifier
 * 
 * Intention is to have a summary of all VS used by any profile / extension def 
 * 
 * Process:
 *  1. examine all the SD's in the guide looking for bindings and assemple a list of VS
 *  2. 
 * 
 * Differs from the one in scripts as it includes all ValueSets referenced by profiles - not just
 * those defined in the IG so don't want to muck up NZ Base.
 * 
 * It may be that this one becomes the one in scripts (as it will be used by dependant IGs)
 * and the one currently there becomes specific to NZBase
 * 
 * NEED TO EXECUTE ~/IG/globalScripts/makeGlobalIGSummary first, as it creates the 'allVS' file that has all VS defined by all IGs
 * 
 * Executed from the runSushi.sh script at the IG base
 * */


let markdown = require( "markdown" ).markdown;

let fs = require('fs');

let globalVSFileName =  "../globalScripts/allVS.json"

let pathToProfiles = 'fsh-generated/resources'


let terminologyFile =  "input/pagecontent/terminology.md";  // for IG publisher


//This is the list of all ValueSets defined in all IG's 
//is a hash keyed on url  containing [{IG: (key) description: location: (url)}]
let allVS1 = JSON.parse(fs.readFileSync(globalVSFileName, {encoding: 'utf8'}));


let hashGlobalVS = {}
Object.keys(allVS1).forEach(function(key){
    let item = allVS1[key]
    //allVS has arrays for where it is defined. Should really only be one...
    hashGlobalVS[key] = {url:key,
        description:item[0].description,
        location:item[0].location,
        IG:item[0].IG,
        IGname:item[0].IGname, 
        paths:[]}
 console.log(item[0].IG,item[0].IGname)
})

//console.log(globalVS)



//first, create a list of all ValueSets defined in the IG

//Next, go through all the profiles and get the bound elements

let arFiles = fs.readdirSync(pathToProfiles);
arFiles.forEach(function(fileName){
    console.log(fileName)
    if (fileName.indexOf('Structure') > -1) {
        let SD = JSON.parse(fs.readFileSync(pathToProfiles + "/"+ fileName, {encoding: 'utf8'}));
        if (SD.snapshot && SD.snapshot.element && SD.kind !== 'logical') {
            SD.snapshot.element.forEach(function (ed) {
                //console.log(ed.binding)
                if (ed.binding && ed.binding.valueSet) {
                    console.log(ed.path + " " + ed.binding.valueSet)
                    if (hashGlobalVS[ed.binding.valueSet]) {
                        //ValueSet has been referenced
                        //console.log('Binding to ' + ed.binding.valueSet + ' in ' + SD.url)
                        //hashGlobalVS[ed.binding.valueSet].paths = hashGlobalVS[ed.binding.valueSet].paths || []
                        if (hashGlobalVS[ed.binding.valueSet]) {
                            hashGlobalVS[ed.binding.valueSet].paths.push({path:ed.path})
                        } else {
                            console.log(`>>>>>>> VS: ${ed.binding.valueSet} is in the ${ed.path} path, but the VS is not defined anywhere`)
                        }
                        

                    } else {
                        //A binding to a ValueSet not defined in this IG
                        //could be from an extension of profile... 
                        //arMissingBindings.push({path:ed.path,binding:ed.binding})
                    }
                }
                
            })
        }
    }
   

})

//now assemble the html for all ValueSets references in any profile in the 

let arVSHtml = []
arVSHtml.push("<h3>ValueSets</h3>");

arVSHtml.push("<table class='table table-bordered table-condensed'>");

Object.keys(hashGlobalVS).forEach(function(key){
    let vsItem = hashGlobalVS[key]
    if (vsItem.paths.length > 0) {
        console.log(vsItem)
        //we're only interested in the VS where there is a paths element - ie some element in the profile referred to it

        let link = `<a href="${vsItem.location}">${key}</a> `
        
        arVSHtml.push("<tr>")
        arVSHtml.push(`<td> ${link}</td>`)
        arVSHtml.push(`<td> ${parseMarkDown(vsItem.description)} </td>`)
        arVSHtml.push("<td>")
        vsItem.paths.forEach(function(path){
         
            arVSHtml.push(`<div>${path.path}</div>`)
        })
        arVSHtml.push("</td>")
        arVSHtml.push(`<td>${vsItem.IGname}</td>`)


        arVSHtml.push("</tr>")

    }
})

let contents = arVSHtml.join("\r\n")

fs.writeFileSync(terminologyFile,contents);


//console.log(hashGlobalVS)

//convert markdown text to html
function parseMarkDown(text) {
    return markdown.toHTML(text)
}











