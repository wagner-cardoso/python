import datetime

from django.db import models
from django.utils import timezone

class Turma(models.Model):
    nome = models.CharField(max_length=20)
    aluno = models.ForeignKey('Aluno', on_delete=models.CASCADE)

    def __str__(self):
        return self.nome


class Aluno(models.Model):
    matricula = models.CharField(max_length=7)
    nome = models.CharField(max_length=60)
    email = models.EmailField()
    nota = models.DecimalField(max_digits=3, decimal_places=1, default=0.0)

    def __str__(self):
        return self.nome
