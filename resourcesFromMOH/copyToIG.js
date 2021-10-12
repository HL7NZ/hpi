#!/usr/bin/env node

//need to run the globalscripts/makeGlobalIGSummary first to create the all[x] files

let fs = require('fs');

//load the set of all ValueSets defined in the IGs
let allVSText = fs.readFileSync("../../globalScripts/allVS.json")
let hashAllVS = JSON.parse(allVSText)

//load the set of all CodeSystems defined in the IGs
let allCSText = fs.readFileSync("../../globalScripts/allCS.json")
let hashAllCS = JSON.parse(allCSText)

//console.log(allVS);


let arInputFolders=[]       //folders where the artifacts are located
arInputFolders.push({type:'cs', path:'./output/input/fsh/codesystems'})
arInputFolders.push({type:'vs', path:'./output/input/fsh/valuesets'})

arInputFolders.forEach(function(item){
    let path = item.path;
    let arFiles = fs.readdirSync(path)
   
    arFiles.forEach(function(name){
        let fullFileName = path + "/" + name
        //console.log(fullFileName)
        let fsh = fs.readFileSync(fullFileName).toString();
        let url = getUrlFromFsh(fsh)
        let IG = ""     //the IG where this artifact is currently defined

        //which hash to look in
        let hash = hashAllVS;
        if (item.type == 'cs') {
            hash = hashAllCS;
        }

        let IGWhereDefinedItem = hash[url]
        let IGWhereDefined = "Not currently included"
        if (IGWhereDefinedItem) {
            IGWhereDefined = IGWhereDefinedItem.IGName
        }

      
        console.log(name,url,IGWhereDefined)

    })


})

function getUrlFromFsh(fsh) {
    let ar = fsh.split('\n')
    let url = ""
    ar.forEach(function(line) {
        if (line.indexOf("* ^url") > -1) {
            let ar1 = line.split('=')
            url = ar1[1]
            url = url.replace(/['"]+/g, '')
            url = url.trim()

        }
    })
    return url
}