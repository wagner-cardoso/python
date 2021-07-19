from sqlalchemy import create_engine
from sqlalchemy import Table, Column, Integer, String, MetaData

meta = MetaData()

# configurar banco de dados
engine = create_engine('sqlite:///college.db', echo=True)


# criar tabela students
students = Table(
    'students', meta,
    Column('id', Integer, primary_key=True),
    Column('name', String),
    Column('lastname', String),
)
#meta.create_all(engine)

conn = engine.connect()
#ins = students.insert().values(name='Wagner', lastname='Cardoso')
#result = conn.execute(ins)

conn.execute(students.insert(), [
   {'name':'Roberto', 'lastname':'Cardoso'},
   {'name':'Cristina', 'lastname' : 'Cardoso'},
   {'name':'Acacia', 'lastname' : 'Cardoso'},
   {'name':'Sergio', 'lastname' : 'Cardoso'},
])