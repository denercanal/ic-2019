from Bio import SeqIO
import csv

tabela1 = list(csv.reader(open("tabela_anotada_cds.csv"), delimiter=";"))

seqs = SeqIO.to_dict(SeqIO.parse('Pguajava.fasta', 'fasta'))
for x in tabela1[1:]:
    scaffold,motif,start,end,software,_,_,_,_ = tuple(x)
    #alterar o software que for necessario
    if software != "G":
        continue
    #print(scaffold,motif,start,end,software)
    repet = str(seqs[scaffold].seq[int(start)-1:int(end)])
    #print(repet)

    teste = [r for r in [repet[t:t+3] for t in range(0,len(repet),3)] if r != motif]
    if len(teste) < 1:
        continue
    print(teste)
    break


