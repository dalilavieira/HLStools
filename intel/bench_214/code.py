arq = open('nome.txt', 'r')

print("BENCHMARK=(")
for line in arq:
	line = line.replace('\n','')[:-2]
	print("    '%s' " %line)
print(")")
	
