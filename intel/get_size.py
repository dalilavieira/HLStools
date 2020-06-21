import sys
import os

if __name__ == "__main__":

    program_c = sys.argv[1]
    name = program_c[:-2]

    arq = open("214_benchmarks/" + name + "/" + program_c, "r")
    
    count = 0
    for line in arq:
        line = line.replace("\n", "")
        
        if (line == ''):
            continue
        count += 1
    
    size = os.path.getsize(name+".o")
    print(name + ", " + str(count) + ", " + str(size))
    