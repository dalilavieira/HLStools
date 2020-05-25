import os

arq = open("nome.txt", "r")

c = 1

if __name__ == "__main__":
    
    print("Benchmark,", end="")
    for line in arq:
        
        line = line.replace("\n", "")
        path = line + "/a.prj"
        path_empty = path + "/a.v"
        size = line + "/log.txt"

        result = "v"
        if (not os.path.exists(path)):
            result = "x"
        elif (os.path.getsize(size) > 0):
            if (not os.path.exists(path_empty)):
            	result = "w"
            else:
            	result = "e"
        
        print("%s," %(result), end="")
        c += 1
    print()
    
    print("bechmark,",end="")
    for i in range(c-1):
    	print("%d," %i, end="")
    print()

