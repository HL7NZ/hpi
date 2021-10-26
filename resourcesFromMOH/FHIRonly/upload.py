import os
import requests

server = "http://home.clinfhir.com:8054/baseR4/"
path ='./valuesets'

#print(os.listdir(path))

for name in os.listdir(path):
    #print(name)
    fullName = path + "/"+name
    print(fullName)
    with open(fullName) as fo:
        contents = fo.read()
        print(contents)