import re
import sys
import csv



infile=sys.argv[1]
outfile=sys.argv[2]

with open (infile, "r") as readfile:
    data = readfile.read()#.replace('\n', '')
    
result = re.findall(r".p, len ([0-9]*)", data)

print("Maches: {}".format(len(result)))

with open (outfile, 'w') as writeFile:
    writer = csv.writer(writeFile)
    writer.writerow(result)

