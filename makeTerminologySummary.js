#!/usr/bin/env node

/**
 * make the summary MD file for terminology*/

let fs = require('fs');

let rootPath = "../input/vocabulary/";
let outFile = "../fsh/ig-data/input/pagecontent/terminology.md";


let arFile = []
let arCS = []
let arVS = []

arVS.push("### ValueSets");
arVS.push("\r\n");

arVS.push("| ValueSet | Purpose | Url |")
arVS.push("| --- | --- | --- |")

arCS.push("### ValueSets");
arCS.push("\r\n");

arCS.push("| CodeSystem | Purpose | Url |")
arCS.push("| --- | --- | --- |")


fs.readdirSync(rootPath).forEach(function(file) {
    console.log(file)
    let ar = file.split('-')
    switch (ar[0]) {
        case 'ValueSet' :
            let vs = loadFile(file)
            let lne = "| " + vs.title + " | " + vs.description + " | "
            let ar1 = file.split('.')
            let htmlFile = ar1[0] + '.html'
            lne += "["+vs.url+"]("+ htmlFile  +") |"
            //lne += "\n"
            arVS.push(lne)
            break;

    case 'CodeSystem' :
            let cs = loadFile(file)
            let lneCS = "| " + cs.title + " | " + cs.description + " | "
            let ar2 = file.split('.')
            let htmlFile2 = ar2[0] + '.html'
             lneCS += "["+cs.url+"]("+ htmlFile2  +") |"
            //lne += "\n"
            arCS.push(lneCS)
            break;
    }

})

arVS.push("\r\n")

let newAR = arVS.concat(arCS)

let fle = newAR.join('\r\n');
fs.writeFileSync(outFile,fle)




function loadFile(path) {
    let fullFileName = rootPath + path;
    let contents = fs.readFileSync(fullFileName, {encoding: 'utf8'});
    let resource = JSON.parse(contents)
    return resource;
}

