import csv

genes_go = list(set(",".join([l.split("\t")[7] for l in open(
    "tabela_anotada_cds_GM.csv").readlines() if l.count("\t") > 6]).split(",")))
tabela2 = list(csv.reader(
    open("Pguajava.genes.annotation.csv"), delimiter=";"))
print(genes_go[:2])
# print(tabela2[:3])

dicionariogo = {l[0]: l[7] for l in tabela2}
res = []
for g in genes_go:
    if not g in dicionariogo:
        continue
    for go in set(dicionariogo[g].split(",")):
        if go.startswith("GO:"):
            res.append(g + "\t" + go + "\n")

open("genes_to_go_GM.csv", "w").writelines(res)
