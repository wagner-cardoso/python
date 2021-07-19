from django.db import models

class Aluno(models.Model):
    nome = models.CharField(max_length=50)
    dt_nasc = models.DateTimeField('data nascimento')
    GENEROS = (
        ('M', 'Masculino'),
        ('F', 'Feminino'),
    )
    genero = models.CharField(max_length=1, default='M', choices=GENEROS)
    telefone = models.CharField(max_length=11, default='')

    def __str__(self):
        """ String para representar o objeto Aluno (no site Admin)."""
        return self.nome

class Turma(models.Model):
    nome = models.CharField(max_length=10)
    alunos = models.ManyToManyField(Aluno)

    def __str__(self):
        return self.nome

    def get_alunos(self):
        return " - ".join([str(p) for p in self.alunos.all()])