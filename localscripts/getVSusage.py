import os
import json

# run from the root folder of HPI

"""
d = {"ar":[]}
d["ar"].append("x")
d["ar"].append("y")
d["ar2"] = []
d["ar2"].append("z")
print(d)
"""

def getUsage(sourceFilePath):
    # """ Get all the binding references in all profiles"""

    #sourceFilePath ='./fsh-generated/resources'
    #summaryFilePath = "./input/pagecontent/terminology.md"

    summary = {}

    for name in os.listdir(sourceFilePath):
        #print(name)
        if "StructureDefinition" in name:
            fullName = sourceFilePath + "/"+name
            print(fullName)
            with open(fullName) as fo:
                resource = json.load(fo)
                #print(resource).get()
                if resource.get('snapshot'):
                    for ed in resource['snapshot']['element']:
                        #print(ed)
                        path = ed['path']
                        if ed.get('binding'):
                            vs = ed['binding']['valueSet']
                            if (vs):
                                #print(vs)
                                #summary[vs] = summary[vs] or []
                                if vs not in summary:
                                    summary[vs] = [path]
                                    #print(summary)
                                else:
                                    #e = summary[vs]
                                    if path not in summary[vs]:
                                        summary[vs].append(path)
                                    #e.append(path)
                                
                                
                else:
                    print(f"{name} has no snapshot")
    
    #for key in summary:
       # print(key)
        #print(f"  {summary[key]}")

    return summary

if __name__ == "__main__":
    # execute only if run as a script
    getUsage()


    #https://realpython.com/python-dicts/#building-a-dictionary-incrementally