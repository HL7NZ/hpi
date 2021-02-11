#!/usr/bin/env node

let fs = require('fs')
let path = "./"
let list = fs.readdirSync(path);
list.forEach(function(file,ctr) {
    if (! file.startsWith('.') && ! file.startsWith('add')) {
        let fullFileName = path + file;
        console.log(file)
        let contents = fs.readFileSync(fullFileName).toString()
        let ar = contents.split('\n');
    
        let newAr = ar.filter(item => item != '')


        let idLine = newAr[2].trim()
        if (idLine.startsWith('<id')) {
            console.log("  -->Id present: " + idLine)
        } else {
            let newIdLine = '<id value="id-' + ctr + '" />'
            
            newAr.splice(2,0,newIdLine)
            let f = newAr.join('\n')
            fs.writeFileSync(fullFileName,f) 
            console.log("  ==>Id absent")
            
        }
    }
    



})
