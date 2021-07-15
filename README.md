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


_____
___

## *Example Queries*
*(To prove this database design works, right?)*
___

SQL query that fetches all employees assigned to pizzeria n°5:
``` python
q = """SELECT  
project_6.role.first_name, project_6.role.last_name
FROM  
project_6.pizzeria INNER JOIN 
project_6.pizzeria_has_employee ON project_6.pizzeria_has_employee.pizzeria_id = project_6.pizzeria.id INNER JOIN 
project_6.employee ON project_6.pizzeria_has_employee.employee_id = project_6.employee.id INNER JOIN
project_6.role ON project_6.employee.id = project_6.role.id
WHERE project_6.pizzeria.id = :val"""
r = db.session.execute(q, {'val': 5}).mappings().all()
```

SQLAlchemy query to get all orders labelled as cancelled:
``` python
q = db.session.query(order.Order  
).join(order_status.OrderStatus
).filter(order_status.OrderStatus.name.ilike("%cancelled%")
).all()
 ```

SQLAlchemy query to get all users with at least one order:
``` python
q = db.session.query(role.Customer
).filter(role.Customer.orders != None).all()
 ```

SQLAlchemy query chained with accessing properties to get the name of all products in the first order of the third customer:
``` python
q = db.session.query(role.Customer).all()
for i in q[2].orders[0].cart.products:
	print(i.product.name)
 ```

SQL query that gets all pizzas that can't be made, because the stocks of certain ingredients are too low:
``` python
q = """SELECT
    project_6.product.name AS pizza_name,
    project_6.ingredient.name AS ingredient_name,
    project_6.product_has_ingredient.ingredient_quantity AS required_quantity,
    project_6.stock_has_ingredient.ingredient_quantity AS quantity_in_stock,
    project_6.stock.pizzeria_id
FROM
    project_6.product INNER JOIN
    project_6.product_has_ingredient ON project_6.product_has_ingredient.product_id = project_6.product.id INNER JOIN
    project_6.ingredient ON project_6.product_has_ingredient.ingredient_id = project_6.ingredient.id INNER JOIN
    project_6.stock_has_ingredient ON project_6.stock_has_ingredient.ingredient_id = project_6.ingredient.id INNER JOIN
    project_6.stock ON project_6.stock_has_ingredient.stock_id = project_6.stock.id
WHERE
    project_6.product_has_ingredient.ingredient_quantity > project_6.stock_has_ingredient.ingredient_quantity"""
r = db.session.execute(q).mappings().all()
```
