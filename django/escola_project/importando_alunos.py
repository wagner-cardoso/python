import csv

from aluno.models import Aluno


def csv_to_list(filename: str) -> list:
    '''
    Lê um csv e retorna um OrderedDict.
    Créditos para Rafael Henrique
    https://bit.ly/2FLDHsH
    '''
    with open(filename) as csv_file:
        reader = csv.DictReader(csv_file, delimiter=';')
        csv_data = [line for line in reader]
    return csv_data


def save_data(data):
    '''
    Salva os dados no banco.
    '''
    aux = []
    for item in data:
        matricula = str(item.get('MATRICULA'))
        nome = str(item.get('NOME'))
        print(matricula + '  ' + nome)
        obj = Aluno(
            matricula=matricula,
            nome=nome,
        )
        aux.append(obj)
    Aluno.objects.bulk_create(aux)


data = csv_to_list('lista_alunos_9ano.csv')
save_data(data)
