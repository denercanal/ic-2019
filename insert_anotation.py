import csv

tabela1 = list(csv.reader(open("tabela_final_2.tsv"), delimiter="\t"))
# print(tabela1[:2])

tabela2 = list(csv.reader(
    open("Pguajava.genes.annotation.csv"), delimiter=";"))
# print(tabela2[:2])

dicionario = {l[0]: l[2] + " " + l[6] for l in tabela2}
dicionariogo = {l[0]: l[7] for l in tabela2}
# print(dicionario["Pg00003"])

for x in tabela1:

    x += [" ".join([dicionario[g] if g in dicionario else "-" for g in x[7].split(",")]).replace(
        "|", " "), ",".join([dicionariogo[g] if g in dicionariogo else "" for g in x[7].split(",")])]


open("tabela_anotada_GM.csv", "w").writelines(
    ["\t".join(l) + "\n" for l in tabela1])
