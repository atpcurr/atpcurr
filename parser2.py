import re
import sys
import csv



infile=sys.argv[1]
outfile=sys.argv[2]

with open (infile, "r") as readfile:
    data = readfile.read()#.replace('\n', '')
    
result = re.findall(r"Proof found: (.*.p), len (.*), time", data)
# result = re.findall(r"(.*.p):% Bigsteps: (.*) Inf", data)

print("Maches: {}".format(len(result)))
print(result[11])

with open (outfile, 'w') as writeFile:
    writer = csv.writer(writeFile)
    for r in result:
        filename=r[0]
        filename=filename.split('/')[-1]
        writer.writerow((filename,r[1]))

