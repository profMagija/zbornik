import pandas as pd
import numpy as np 
figures = [] 
for file_num in range(1, 9):
    data = pd.read_csv("%d.csv" % file_num).set_index("label").dropna()
    print ("# Figure %d" % file_num)
    y = []
    for x in range(1, 51):
        print(x, end="\t")
        for phase in ["2 faze", "3 faze", "4 faze", "5 faza", "6 faza"]:
            print(data["%s" % x][phase], end="\t")
            y.append(data["%s" % x][phase])
        print()
    
    print()
    print()
    figures.append(np.array(y))
data = pd.read_csv("%d.csv" % 9).set_index("label").dropna()
y = []
# print(data)
print ("# Figure %d" % 9)
for x in range(1, 51):
    print(x, end="\t")
    for phase in ["GSA", "PSO"]:
        print(data["%s" % x][phase], end="\t")
        y.append(data["%s" % x][phase])
    print()
figures.append(np.array(y))


for i, f in enumerate(figures):
    print("# Za plot_%d.pdf: set yr [%d:%d]" % (i+1, int(np.min(f))-1, int(np.max(f))+1))