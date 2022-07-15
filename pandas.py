import pandas as pd
> pip install pandas

comentarios = pd.read_csv('comentarios.csv')
textos = comentarios['comentarios']
classificacao = comentarios['classificacao']

comentarios = pd.read_csv('comentarios.csv')
textos = comentarios['comentarios']
classificacao = comentarios['classificacao']
textos_quebrados = textos.str.split()

comentarios = pd.read_csv('comentarios.csv')
textos = comentarios['comentarios']
classificacao = comentarios['classificacao']
textos_quebrados = textos.str.split()
palavras = set()
for palavra in textos_quebrados:
    palavras.update(palavra)
    
print(palavras[0])

indices = range(len(palavras))


indices = range(len(palavras))
zip(palavras, indices)

indices = range(len(palavras))
tradutor = {palavra: indice for palavra, indice in zip(palavras, indices)}

def vetorizar_textos(texto, tradutor):

def vetorizar_textos(texto, tradutor):
    vetor_de_palavras = [0] * len(tradutor)
    for palavra in texto:
        if palavra in tradutor:
            posicao = tradutor[palavra]
            vetor_de_palavras[posicao] += 1
    return vetor_de_palavras
    
    comentarios = pd.read_csv('comentarios.csv')
textos = comentarios['comentarios']
classificacao = comentarios['classificacao']
textos_quebrados = textos.str.split()
palavras = set()

for palavra in textos_quebrados:
    palavras.update(palavra)

indices = range(len(palavras))
print(indices)
tradutor = {palavra: indice for palavra, indice in zip(palavras, indices)}
vetores_de_texto = [vetorizar_textos(texto, tradutor) for texto in textos_quebrados]