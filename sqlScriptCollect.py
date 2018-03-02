import os,sys,re,codecs

scriptFiles = os.listdir('./scripts')

for i in scriptFiles:

	#получаем имя файла для хранения скриптов по названию схемы (BSSDB,BSSRP,BSSCM)
	outputFileName = re.findall(r'[B,E,D,T]\w+.sql',i)
	
	#открываем его на запись с добавлением 
	try:
		output = codecs.open(outputFileName[0],'a','utf8')
	except IndexError:
		print('кривое имя файла: ' + str(i))
	
	#открываем файл со скриптом, который надо перекинуть
	currentScript = codecs.open('./scripts/'+i,'r','utf8')
    
    #считываем содержимое
	content = currentScript.read()
    
    #закрываем, он больше не нужен
	currentScript.close()
    
    #пишем в итоговый файл, сначала шапочка
	output.write('\n\n'+'-- '+'\n') # +i+
	
	# и содержимое скрипта
	try:
		output.write(content)
	except:
		print('Кривая кодировка: ' + str(i))
	# и по окончании закрываем его
	output.close


