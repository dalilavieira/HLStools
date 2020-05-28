import os

arq = open("name.txt", "r")

c = 1

if __name__ == "__main__":
    
    print("Number, File Name (.c), Situation")
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
        
        print("%d, %s, %s" %(c, line, result))
        
        c += 1

