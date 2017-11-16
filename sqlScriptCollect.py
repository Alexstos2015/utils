import os,sys,re

scriptFiles = os.listdir('./scripts')

print(list(scriptFiles))

#resFile = open('BSSRP.sql','w')

for i in scriptFiles:
	#получаем имя файла для хранения скриптов по названию схемы (BSSDB,BSSRP,BSSCM)
	outputFileName = re.findall(r'[B,E,D]\w+.sql',i)
	#открываем его на запись с добавлением 
	output = open(outputFileName[0],'a')
    #открываем файл со скриптом, который надо перекинуть
	currentScript = open('./scripts/'+i,'r', encoding="utf-8")
    #считываем содержимое
	content = currentScript.read()
    #закрываем, он больше не нужен
	currentScript.close()
    #пишем в итоговый файл, сначала шапочка
	output.write('\n'+'-- '+i+'\n')
    # и содержимое скрипта
	output.write(content)
	# и по окончании закрываем его
	output.close


