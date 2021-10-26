import os
import requests
import json

from getVSusage import getUsage

# run from the root folder of HPI

server = "http://home.clinfhir.com:8054/baseR4/"
sourceFilePath ='./fsh-generated/resources'

# get a dictionary object that has the paths where there is a binding to a valueset (by url)
dictUsage = getUsage(sourceFilePath)

summaryFilePath = "./input/pagecontent/terminology.md"

summary = []

summary.append("This is a list of ValueSets used in this IG")
summary.append("It is accurate at the time of publishing, but may have been updated since.")
# summary.append("<br></br>")
summary.append("<table class='table table-bordered'>")
summary.append("<tr><th>Title</th><th>Description</th><th>Url</th><th>Paths</th></tr>")
for name in os.listdir(sourceFilePath):
    #print(name)
    if "ValueSet" in name:
        # if "ValueSet" in name or "CodeSystem" in name:
        fullName = sourceFilePath + "/"+name
        print(fullName)
        with open(fullName) as fo:
            resource = json.load(fo)
            url = resource['url']
            print(f"url in vs: {url}")
            summary.append("<tr>")
          
            anchor = f"<a href=\"{resource['resourceType']}-{resource['id']}.html\">{resource['title']}</a>"
            # summary.append(f"<td>{resource['title']}</td>")
            summary.append(f"<td>{anchor}</td>")
            summary.append(f"<td>{resource['description']}</td>")
            summary.append(f"<td>{url}</td>")

            summary.append("<td>")
            if url in dictUsage:
                for path in dictUsage[url]:
                    summary.append(f"<div>{path}</div>")


            summary.append("</td>")
            summary.append("</tr>")
            
            #print(contents)

summary.append("</table>")
contents = "\n".join(summary)
with open(summaryFilePath,'w') as fo:
    fo.write(contents)
