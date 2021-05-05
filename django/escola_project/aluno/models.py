import datetime

from django.db import models
from django.utils import timezone

class Turma(models.Model):
    nome = models.CharField(max_length=20)
    aluno = models.ForeignKey('Aluno', on_delete=models.CASCADE)

class Aluno(models.Model):
    matricula = models.IntegerField()
    nome = models.CharField(max_length=50)
    email = models.EmailField()
    nota = models.DecimalField(max_digits=2, decimal_places=1)

    def __str__(self):
        return self.nome
