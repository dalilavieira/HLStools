import sys

if __name__ == "__main__":
    
    if len(sys.argv) > 1:
        program_c = sys.argv[1]
    else:
        print("python3 remove_info <program.c>\n")
        exit(0)

    arq = open(program_c, "r")

    for line in arq:
        line = line.replace("\n", "")
        if ("typedef int bool;" == line):
            continue
        if ("#define NULL ((void*)0)" == line):
            continue
        print(line)