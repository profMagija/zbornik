import pandas as pd

for file_num in range(1, 9):
    data = pd.read_csv("%d.csv" % file_num).set_index("label").dropna()
    print ("# Figure %d" % file_num)
    for x in range(1, 51):
        print(x, end="\t")
        for phase in ["2 faze", "3 faze", "4 faze", "5 faza", "6 faza"]:
            print(data["%s" % x][phase], end="\t")
        print()
    print()
    print()
data = pd.read_csv("%d.csv" % 9).set_index("label").dropna()
# print(data)
print ("# Figure %d" % 9)
for x in range(1, 51):
    print(x, end="\t")
    for phase in ["GSA", "PSO"]:
        print(data["%s" % x][phase], end="\t")
    print()