
import os,sys,re

scriptFiles = os.listdir('./scripts')

print(scriptFiles)

for x in scriptFiles:
	result = re.findall(r'[B,E,D]\w+.sql',x)
	print(result)