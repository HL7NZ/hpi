#!/usr/bin/env node
/**
 * generates the terminology tab page lists all VS used by the guide - but not
 * VS from extensions defined in other IG (eg NZ Base) Executed from the
 * runSushi.sh script at the IG base
 */

let markdown = require("markdown").markdown;

let fs = require('fs');

let pathToProfiles = 'fsh-generated/resources'

// the name of the file produced by this script
let terminologyFile = "input/pagecontent/terminology.md"; // for IG publisher
let hashGlobalVS = {}

let hashVSDetails = {} // the id of the VS. key = url
let hashCSDetails = {} // the id of the CS. key = url
let hashCMDetails = {} // the id of the CM. key = url
let arFiles = fs.readdirSync(pathToProfiles);
let hashPath = {} // so that a path is only shown once...

function sortObjectByKeys(o) {
   return Object.keys(o).sort().reduce((r, k) => (r[k] = o[k], r), {});
   //return Object.values(o).sort().reduce((a,b) => (a.title > b.title) ? 1 : -1)
}

arFiles.forEach(function(fileName) {
	
	if (fileName.indexOf('CodeSystem') > -1) {
		// A valueset - get the id (as we need the VS.id for the link)

		let CS = JSON.parse(fs.readFileSync(pathToProfiles + "/" + fileName, {
			encoding : 'utf8'
		}));
		let key = CS.url+':'+CS.version
		console.log(key)
		hashCSDetails[key] = {
			id : CS.id,
			description : CS.description,
			url: CS.url,
			version: CS.version,
			title: CS.title
		}
	}

	if (fileName.indexOf('ValueSet') > -1) {
		// A valueset - get the id (as we need the VS.id for the link)

		let VS = JSON.parse(fs.readFileSync(pathToProfiles + "/" + fileName, {
			encoding : 'utf8'
		}));
		let key = VS.url+":"+VS.version
		hashVSDetails[key] = {
			id : VS.id,
			description : VS.description,
			url: VS.url,
			version: VS.version,
			title: VS.title
		}
	}

	if (fileName.indexOf('ConceptMap') > -1) {
		// A valueset - get the id (as we need the VS.id for the link)
		let CM = JSON.parse(fs.readFileSync(pathToProfiles + "/" + fileName, {
			encoding : 'utf8'
		}));
		let key = CM.url+":"+CM.version
		hashCMDetails[key] = {
			id : CM.id,
			description : CM.description,
			url: CM.url,
			version: CM.version,
			title: CM.title
		}
	}

})

// now assemble the html for all ValueSets references in any profile in the

let arVSHtml = []

console.log('building terminology.md file..')
arVSHtml.push("This page provides a list of the FHIR terminology artifacts defined as part of this implementation guide.");
arVSHtml.push("<h3>Code Systems</h3>");
arVSHtml.push("<table class='table table-bordered table-condensed'>");
arVSHtml.push("<tr><th>Title</th><th>Description</th><th>Canonical url</th></tr>")

let hashCSDetailsSorted = sortObjectByKeys(hashCSDetails)
Object.keys(hashCSDetailsSorted).forEach(function(key) {

	let details = hashCSDetails[key]

	if (details) {
		// the VS is included in the IG
		let link = `<a href="CodeSystem-${details.id}.html">${details.title}-${details.version}</a> `
		//console.log('link:',link)

		arVSHtml.push("<tr>")
		arVSHtml.push(`<td>${link}</td>`)
		arVSHtml.push(`<td> ${parseMarkDown(details.description)} </td>`)
		arVSHtml.push(`<td> <a href="${details.url}">${details.url}</a></td>`)
		arVSHtml.push("</tr>")
	}
})
arVSHtml.push("</table>");

arVSHtml.push("<h3>ValueSets</h3>");
arVSHtml.push("<table class='table table-bordered table-condensed'>");

let hashVSDetailsSorted = sortObjectByKeys(hashVSDetails)
Object.keys(hashVSDetailsSorted).forEach(function(key) {

	let details = hashVSDetails[key]

	if (details) {
		// the VS is included in the IG
		//let link = `<a href="ValueSet-${details.id}.html">${key}</a> `
		let link = `<a href="ValueSet-${details.id}.html">${details.title}-${details.version}</a> `

		arVSHtml.push("<tr>")
		arVSHtml.push(`<td>${link}</td>`)
		arVSHtml.push(`<td> ${parseMarkDown(details.description)}</td>`)
		arVSHtml.push(`<td> <a href="${details.url}">${details.url}</a></td>`)
		// arVSHtml.push(`<td>${vsItem.IGname}</td>`)

		arVSHtml.push("</tr>")
	}
})
arVSHtml.push("</table>");

arVSHtml.push("<h3>Concept Maps</h3>");
arVSHtml.push("<table class='table table-bordered table-condensed'>");

let hashCMDetailsSorted = sortObjectByKeys(hashCMDetails)
Object.keys(hashCMDetailsSorted).forEach(function(key) {

	let details = hashCMDetails[key]

	if (details) {
		// the VS is included in the IG
		let link = `<a href="ConceptMap-${details.id}.html">${details.title}-${details.version}</a> `

		arVSHtml.push("<tr>")
		arVSHtml.push(`<td>${link}</td>`)
		arVSHtml.push(`<td> ${parseMarkDown(details.description)} </td>`)
		arVSHtml.push(`<td> <a href="${details.url}">${details.url}</a></td>`)

		arVSHtml.push("</tr>")

	}
})
arVSHtml.push("</table>");


let contents = arVSHtml.join("\r\n")
console.log('writing to ', terminologyFile)
fs.writeFileSync(terminologyFile, contents);

// convert markdown text to html
function parseMarkDown(text) {
	return markdown.toHTML(text)
}
