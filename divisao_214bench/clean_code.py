import sys

if __name__ == "__main__":
    
    if len(sys.argv) > 1:
        path = sys.argv[1]
    else:
        print("python3 clean_code.py <name_code>.c")
        exit(0)

    arq = open(path, "r")

    for line in arq:
        line = line.replace("\n", "")
        if "#include \"HLS/hls.h\"" == line:
            continue
        print(line)