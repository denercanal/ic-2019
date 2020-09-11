import csv

tabela1 = list(csv.reader(open("tabela_anotada_GM.csv"), delimiter="\t"))

# alterar p/ not "C"
tabela2 = [x for x in tabela1 if "T" in x[6]]

open("tabela_anotada_tree_GM.csv", "w").writelines(
    ["\t".join(l) + "\n" for l in tabela2])
