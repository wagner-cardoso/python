# 2. Vamos iniciar

## 2.1 Criar um ambiente virtual
```
$ python -m venv venv
```



## 2.2 Ativar o ambiente virtual
```
$ ./venv/scripts/activate
```



## 2.3 Instalação do Django
```
$ python -m pip install Django
```



## 2.4 Iniciando um projeto no Django
Um projeto é uma coleção de arquivos de configuração para uma instância do Django, incluindo configurações de banco de dados, opções específicas do Django, e configurações específicas da aplicação.

Crie um novo diretório para a sua aplicação e mude para esse diretório.

```
$ django-admin startproject app
```

## 2.4.1 Criando um super usuário
```
$ python3 manage.py migrate
$ python3 manage.py createsuperuser
```





### 2.4.1 Vejamos o que a opção startproject criou
```
escola
    escola
        __init__.py
        asgi.py
        settings.py
        urls.py
        wsgi.py
     manage.py 
```

- `__init__.py`: um arquivo requerido pelo Python para tratar o diretório como um pacote (um grupo de módulos)

- ``manage.py``: um utilitário de linha de comando que permite você interagir com este projeto Django de diversas formas

- ``settings.py``: arquivo de configuração para esse projeto

- ``urls.py``: arquivo de declarações das URLs para esse projeto

- ``asgi.py``: um entry-point para servidores Web ASGI compatíveis

- ``wsgi.py``: um entry-point para servidores Web WSGI compatíveis



## 2.5 O servidor de desenvolvimento

Django inclui um servidor web embutido e leve para usarmos durante o desenvolvimento.
Vamos verificar o projeto que acabamos de criar.

```
$ python manage.py runserver
```

Obs: Pode-se escolher a porta na qual o servidor Web vai executar.
```
$ python manage.py runserver 8080
```



# 3. Criando a aplicação
Agora que seu ambiente - um "projeto" - está configurado, você está pronto para iniciar o trabalho.

Cada aplicação escrita em Django consiste de um pacote Python que segue uma convenção. Django vem com um utilitário que automaticamente gera uma estrutura básica de uma aplicação, então você pode focar em escrever código ao invés de ficar criando diretórios. 

>**Projects vs. apps** qual é a diferença entre um projeto e uma aplicação? Uma aplicação é um sistema que faz alguma coisa - por exemplo, um sistema Weblog, um sistema de banco de dados de registros públicos ou uma pequena aplicação de enquetes. Um projeto é uma coleção de configurações e aplicações para um website em particular. Um projeto pode conter múltiplas aplicações. Uma aplicação pode estar em múltiplos projetos. 

Suas apps podem estar em qualquer local do Python path. Vamos criar nossa app no mesmo diretório do arquivo manage.py
para que ela possa ser importada do módulo principal, ao invés de um sub-módulo.

Para criar sua app, certifique-se que está no mesmo diretório do manage.py e digite este comando:

```
$ python manage.py startapp polls
```

```
polls/
    __init__.py
    admin.py
    apps.py
    migrations/
        __init__.py
    models.py
    tests.py
    views.py
```



## 3.1 Criando sua primeira aplicação Django - 1

Vamos escrever a nossa primeira view. Abra o arquivo poll/views.py e adicione o seguinte código nele:
```
from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, world. You're at the polls index.")


```

Esta é a mais simples view em Django. Para chamar a view, precisamos mapeá-la para uma URL - e para isso precisamos configurar uma URL.

Para criar o mapeamento no diretório polls, crie um arquivo chamado urls.py e inclua o código abaixo:
```
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
]

```

O próximo passo é apontar a URLconf raiz para o módulo polls.urls. Na pasta escola/urls.py, adicione um import para 
django.urls.include e insira um include() na lista urlpatterns:

```
from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('polls/', include('polls.urls')),
    path('admin/', admin.site.urls),
]
```



## 3.2 Criando sua primeira aplicação Django - 2
Nós iremos agora configurar o banco de dados, criar o primeiro modelo e obter uma rápida introdução ao site admin gerado automaticamente.

### 3.2.1 Configurando banco de dados
Abra o arquivo **settings.py**. É um módulo normal do Python com variáveis representando as configurações do Django.
A chave DATABASES permite configurar o banco de dados, o banco de dados padrão é o sqlite.

### 3.2.2 Criando modelos
Agora definiremos seus modelos - essencialmente, o layout do banco de dados, com os metadados.
```
Filosofia - Um modelo é o único e definitivo fonte sobre seus dados. Ele contém os campos essenciais e comportamentos dos dados que você está armazenando. Django segue o princípio DRY.
 O objetivo é definir seu modelo de dado em um único local e automaticamente derivar coisas de lá.
 Isto inclui as migrações - diferentemente em Ruby On Rails, por exemplo, migrações são inteiramente derivadas de seu arquivo de modelos.
```

Em nossa aplicação **poll** criaremos dois modelos: **Question** e **Choice**. Uma Question tem uma pergunta e uma data de publicação.
Um Choice tem dois campos: o texto de uma escolha e uma contagem de votos. Cada Choice está associado a uma Question.

Esses conceitos são representados por classes. Edite o arquivo `polls/models.py` para que ele se pareça com isto:

```
from django.db import models

class Question(models.Model):
    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField('date published')

class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=200)
    votes = models.IntegerField(default=0)
```

Aqui, cada modelo é representado por uma classe que herda de `django.db.models.Model`. Cada modelo tem um número de variáveis classe, que representa um campo de banco de dados no modelo.

Cada campo é representado por uma instância de uma classe `Field` - por exemplo, `CharField` para campos caractere e `DateTimeField` para data e hora. Isto diz para o Django qual tipo de dado cada campo mantém.

O nome de cada instância de `Field` (por exemplo, `question_text` ou `pub_date`) é o nome do campo, um formao amigável. Você usará este nome em seu código Python, e seu banco de dados usará ele como o nome da coluna.

#### Ativando modelos

Esse pequeno código modelo dá ao Django muita informação. Com ele, Django é capaz de:

- Criar um esquema de banco de dados (CREATE `TABLE`) para esta aplicação.
- Criar uma API de acesso ao banco de dados Python para acessar os objetos `Question` e `Choice` .

Mas para que isso ocorra precisamos dizer ao nosso projeto que a aplicação `polls` está instalada. 

> **Filosofia**
>
> Aplicações Django são "plugáveis": Você pode usar uma aplicação em múltiplos projetos, e distribui-las, porque elas não tem que estar ligadas a uma instalação específica do Django.

Para incluir a aplicação em nosso projeto, precisamos adicionar uma referência a sua classe na seção `INSTALLED_APPS`. A classe `PollsConfig` está no arquivo `polls/apps.py`, assim seu caminho pontilhado é `polls.apps.PollsConfig`. Edite o arquivo `escola/settings.py` e adicione aquele caminho pontilhado na seção `INSTALLED_APPS`:  

```
INSTALLED_APPS = [
    'polls.apps.PollsConfig',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]
```

Agora o Django sabe incluir a aplicação `polls`. Vamos executar outro comando:

```console
$ python manage.py makemigrations polls
```

Você verá algo similar a isto:

```
Migrations for 'polls':
  polls/migrations/0001_initial.py
    - Create model Question
    - Create model Choice
```

#### Uma definição de modelo típica

```
from django.db import models

class MyModelName(models.Model):
    """Uma típica classe definindo um modelo, derivada da classe Model."""

    # Campos
    my_field_name = models.CharField(max_length=20, help_text='Enter field documentation')
    ...

    # Metadados
    class Meta:
        ordering = ['-my_field_name']

    # Métodos
    def get_absolute_url(self):
        """Retorna a url para acessar uma instancia específica de MyModelName."""
        return reverse('model-detail-view', args=[str(self.id)])

    def __str__(self):
        """ String para representar o objeto MyModelName (no site Admin)."""
        return self.my_field_name
```