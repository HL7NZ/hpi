#!/usr/bin/env node
/**
 * generates the terminology tab page
 * lists all VS used by the guide - but not VS from extensions defined in other IG (eg NZ Base)
 * Executed from the runSushi.sh script at the IG base
 * */


let markdown = require( "markdown" ).markdown;

let fs = require('fs');

let pathToProfiles = 'fsh-generated/resources'

//the name of the file produced by this script
let terminologyFile =  "input/pagecontent/terminology.md";  // for IG publisher
let hashGlobalVS = {}

/*

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

*/

//first, create a list of all ValueSets referred to by any profile or extension in the IG

let hashVS = {}     //all the VS referenced in any profile. key = url
let hashVSDetails = {}   //the id of the VS. key = url
let arFiles = fs.readdirSync(pathToProfiles);
let hashPath = {}   //so that a path is only shown once...

arFiles.forEach(function(fileName){
    
    if (fileName.indexOf('Structure') > -1) {
        //a StructureDefinition - get the binding
        let SD = JSON.parse(fs.readFileSync(pathToProfiles + "/"+ fileName, {encoding: 'utf8'}));
        if (SD.snapshot && SD.snapshot.element && SD.kind !== 'logical') {
            SD.snapshot.element.forEach(function (ed) {
               
                if (ed.binding && ed.binding.valueSet) {
                    let vsUrl = ed.binding.valueSet
                    hashVS[vsUrl] = hashVS[vsUrl] || []
                    if (! hashPath[ed.path]) {
                        hashVS[vsUrl].push({path:ed.path})
                        hashPath[ed.path] = true
                    }
                    
                }
                
            })
        }
    }

    if (fileName.indexOf('ValueSet') > -1) {
        //A valueset - get the id (as we need the VS.id for the link)
        let VS = JSON.parse(fs.readFileSync(pathToProfiles + "/"+ fileName, {encoding: 'utf8'}));
        hashVSDetails[VS.url] = {id:VS.id,description:VS.description}
    }

})

//return

//now assemble the html for all ValueSets references in any profile in the 

let arVSHtml = []

arVSHtml.push("<h3>ValueSets</h3>");

arVSHtml.push("<table class='table table-bordered table-condensed'>");

Object.keys(hashVS).forEach(function(key){
    let arPaths = hashVS[key]        //an array of paths. key = VS.url
    let details = hashVSDetails[key]

    if (details) {
        //the VS is included in the IG

        let link = `<a href="ValueSet-${details.id}.html">${key}</a> `

        arVSHtml.push("<tr>")
        arVSHtml.push(`<td>${link}</td>`)
        arVSHtml.push(`<td> ${parseMarkDown(details.description)} </td>`)
        arVSHtml.push("<td>")
        arPaths.forEach(function(item){
            arVSHtml.push(`<div>${item.path}</div>`)
        })
        arVSHtml.push("</td>")
        //arVSHtml.push(`<td>${vsItem.IGname}</td>`)


        arVSHtml.push("</tr>")
    } else {
        //this is a VS referred to in the IG, but not present in the IG
        let link = `<a href="${key}">${key}</a> `    //Assume that the url resolves...

        arVSHtml.push("<tr>")
        arVSHtml.push(`<td>${link}</td>`)       //only the Url
        //arVSHtml.push(`<td> ValueSet not present in the IG </td>`)
        arVSHtml.push(`<td>  </td>`)
        arVSHtml.push("<td>")
        arPaths.forEach(function(item){
            arVSHtml.push(`<div>${item.path}</div>`)
        })
        arVSHtml.push("</td>")
        //arVSHtml.push(`<td>${vsItem.IGname}</td>`)


        arVSHtml.push("</tr>")
    }

   // }
})

let contents = arVSHtml.join("\r\n")

fs.writeFileSync(terminologyFile,contents);




//convert markdown text to html
function parseMarkDown(text) {
    return markdown.toHTML(text)
}











