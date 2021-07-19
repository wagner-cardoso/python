from django.contrib import admin
from .models import Aluno, Turma

class AlunoAdmin(admin.ModelAdmin):
    list_display = ['__str__', 'genero', 'dt_nasc']
    list_filter = ['nome']

class TurmaAdmin(admin.ModelAdmin):
    list_display = ['nome', 'get_alunos']

admin.site.register(Aluno, AlunoAdmin)
admin.site.register(Turma, TurmaAdmin)
