#!/usr/bin/env node

let fs = require('fs');

const Handlebars = require("handlebars");

let contents = JSON.parse(fs.readFileSync("../input/capabilities/CapabilityStatement-HpiCapabilityStatement.json").toString())
console.log(contents)
let hb = fs.readFileSync("./capStmt.handlebars").toString()


const template = Handlebars.compile(hb);
let md = (template(contents));



console.log(md)

fs.writeFileSync("../fsh/ig-data/input/pagecontent/capStmt.md",md)
fs.writeFileSync("../input/pagecontent/capStmt.md",md)