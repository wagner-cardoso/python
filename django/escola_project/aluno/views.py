from django.http import HttpResponse, HttpRequest, HttpResponseRedirect
from django.shortcuts import render, get_object_or_404
from django.urls import reverse
from django.views import generic

from .models import Aluno

def index(request):
    # criando um novo registro de aluno
    aluno = Aluno(
        matricula = 5, nome = "Ilna Batinga", email = "ilnabc1@gmail.com", nota = 7.5
    )
    #aluno.save()

    # ler todos os alunos
    objetos = Aluno.objects.all()
    res = 'imprimindo todas as entradas do DB:<br>'

    for aluno in objetos:
        res += str(aluno.matricula) + " - " + aluno.nome + "<br>"

    # ler um registro especifico
    ilna = Aluno.objects.get(matricula = 5)
    res += '<hr>imprimindo apenas um registro <br>'
    res += "Nome...: " + ilna.nome + "<br>Email...: " + ilna.email + "<br>Nota...:" + str(ilna.nota)

    return HttpResponse(res)


def manipulation(request):
    res = ''

    # filtrando dados
    qs = Aluno.objects.filter(nome = "Saulo Batinga Cardoso")
    res += "Encontrado..: %s resultados<br>" % len(qs)

    return HttpResponse(res)

def ordem(request):
    res = ''

    # ordenando por nome
    qs = Aluno.objects.order_by("nome")
    for elt in qs:
        res += elt.nome + "<br>"

    return HttpResponse(res)