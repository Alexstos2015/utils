import os,sys

scriptFiles = filter(os.path.isfile, os.listdir('./scripts'))

print(list(scriptFiles))

resFile = open('BSSRP.sql','w')

for i in list(scriptFiles):
    currentScript = open(i,'r')
    content = currentScript.read()
    currentScript.close()
    resFile.write('-- '+i+'\n')
    resFile.write(content)

resFile.close

