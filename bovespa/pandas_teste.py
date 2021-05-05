import numpy as np
import pandas as pd

# carga dos dados para o dataframe
#df = pd.read_csv('bovespa.csv')

# caregar planilha de acoes do excel
xlsx = 'carteira_acoes.xlsx'
df_original = pd.read_excel(xlsx, 'MODAL', engine='openpyxl')

# exportar a planilha para um arquivo .csv com algumas colunas e remover linhas com valores nulos
df_original.to_csv('carteira.csv',index=False, columns=['DATA','ATIVO','COTAS','VLR COTA'])
df_csv = pd.read_csv('carteira.csv')
df_final = df_csv.dropna()


# gerar um dataframe somente com operacoes de compras
df_mask_c=df_final['COTAS'] > 0
df_compras = df_final[df_mask_c]

# acrescentar uma nova coluna para calcular o total
df_compras['TOTAL'] = df_compras['COTAS'] * df_final['VLR COTA']

df_compras.to_excel('carteira1.xlsx', index=False)

# gerar um dataframe somente com operacoes de vendas
#df_mask_v=df['OPERACAO']=='V'
#df_vendas = df[df_mask_v]


# calcular o preco medio de compra
df_relfinal = df_compras.groupby('ATIVO').TOTAL.sum() / df_compras.groupby('ATIVO').COTAS.sum()
#df_relfinal.to_csv('carteira2.csv',index=False, columns=['ATIVO','PM'])
