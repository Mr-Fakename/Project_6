# *Project 6*

This is the GitHub page for my version of OpenClassrooms' Python Dev 6th project.
The goal is to write technical specifications and create a demo database for a pizzeria group's management application.

Are included here:
 - UML class, component & deployment diagrams
 - The database's physical schema
 - A MySQL dump containing database schema + dummy data
 - A MySQL Workbench file of the project
 - Python files to create and fill the database, using [SQLAlchemy](https://www.sqlalchemy.org) and [Faker](https://faker.readthedocs.io/en/master/)



## **Requirements**

*bcrypt==3.2.0*
*cffi==1.14.5*
*config==0.5.0.post0*
*cryptography==3.4.7*
*Faker==8.10.0*
*greenlet==1.1.0*
*inflect==5.3.0*
*pycparser==2.20*
*PyMySQL==1.0.2*
*python-dateutil==2.8.1*
*six==1.16.0*
*SQLAlchemy==1.4.20*
*text-unidecode==1.3*



## **Manual** 


**Installation**

Clone the repository, create and activate a virtual environment.
<pre> python -m venv environment_name </pre>

Install the required libraries by typing:
<pre> pip install -r requirements.txt </pre>

To create and fill the database:
<pre> python -c 'import main; main.initiate_db()'</pre>

To connect to the database and use it:
 <pre> python -m main </pre>

---
To change of database management system and DBAPI, database name or location, modify the parameters passed to SQLAlchemy's *create_engine()* function.
For more information see: https://docs.sqlalchemy.org/en/14/core/engines.html


 >In **db_seed.py**, line 32
 
``` python 
def __init__(self):  
	self.engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@localhost/project_6')  
	self.session = Session(self.engine)  
  
	self.fake = Faker('fr_FR')
```

> In **db_creation.py**, line 12

``` python 
def create_db():  
	engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@localhost')  
	engine.execute("DROP DATABASE IF EXISTS project_6")  
	engine.execute("CREATE DATABASE project_6")  
	engine.execute("USE project_6")  
	Base.metadata.create_all(engine)
```

> And in **main.py**, line 12

``` python 
class Database:  
	def __init__(self):  
		self.engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@localhost/project_6')  
	        self.session = Session(self.engine)
```

---


 The Faker is set to create French data; to switch to the language of your liking, use language code as a parameter
 e.g.: (en_EN)
 >In **db_seed.py**, line 35
 
``` python 
def __init__(self):  
	self.engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@localhost/project_6')  
	self.session = Session(self.engine)  
  
	self.fake = Faker('fr_FR')
```


It will also be needed to replace data contained in the **dummy.json** file.


 
