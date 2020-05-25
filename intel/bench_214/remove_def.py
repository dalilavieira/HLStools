import sys

if __name__ == "__main__":
    
    if len(sys.argv) > 1:
        program_c = sys.argv[1]
    else:
        print("python3 remove_info <program.c>\n")
        exit(0)

    arq = open(program_c, "r")
    
    name = program_c[:-2]

    for line in arq:
        line = line.replace("\n", "")
        
        if line == "#define NULL ((void*)0)":
        	print("#define NULL 0")
        elif line == "typedef int bool;":
        	continue
        else:
        	print(line)
