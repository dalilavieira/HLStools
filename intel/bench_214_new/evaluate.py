import os

arq = open("name.txt", "r")

c = 1

if __name__ == "__main__":
    
    print("Number, File Name (.c), Situation")
    for line in arq:
        
        line = line.replace("\n", "")
        path = line + "/a.prj"
        size = line + "/log.txt"

        result = "ok"
        if (not os.path.exists(path)):
            result = "x"
        elif (os.path.getsize(size) > 0):
            #print("size ", os.path.getsize(size))
            result = "v"
        
        print("%d, %s, %s" %(c, line, result))
        c += 1

