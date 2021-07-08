import random

from sqlalchemy import create_engine
from sqlalchemy.orm import Session

from CONFIG import MYSQL_USER, MYSQL_PASSWORD

from SQLAlchemy_models import association_tables
from SQLAlchemy_models import user, cart, category, delivery_address, \
    ingredient, menu, order, order_status, payment, permission, pizzeria, product, \
    role, stock

from faker import Faker


class Database:
    """
    Class that connects to the database and contains all the methods to interact with it, via
    the SQLAlchemy ORM
    """

    def __init__(self):
        self.engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@localhost/project_6')
        self.session = Session(self.engine)

        self.fake = Faker('fr_FR')

    def fake_customers(self):
        for i in range(100):
            new_customer = role.Customer(
                first_name=self.fake.first_name(),
                last_name=self.fake.last_name(),
                phone=self.fake.phone_number(),
                street_name=self.fake.street_name(),
                street_num=self.fake.building_number(),
                city_name=self.fake.city(),
                city_pin=self.fake.postcode(),
                email=self.fake.email()
            )

            self.session.add(new_customer)
            self.session.commit()

    def fake_employees(self):
        for i in range(50):
            new_employee = role.Employee(
                first_name=self.fake.first_name(),
                last_name=self.fake.last_name(),
                phone=self.fake.phone_number()
            )

            new_employee.pizzerias.append(
                self.session.query(pizzeria.Pizzeria).all()[random.randint(0, 4)]
            )

            self.session.add(new_employee)
            self.session.commit()

    def fake_pizzerias(self):
        for i in range(5):
            new_pizzeria = pizzeria.Pizzeria(
                name=self.fake.company()
            )

            self.session.add(new_pizzeria)
            self.session.commit()

    def fake_stocks(self):
        for i in range(1, 6):
            new_stock = stock.Stock(
                pizzeria_id=i
            )

            self.session.add(new_stock)
            self.session.commit()

    def fake_products(self):
        pass

    def fake_ingredients(self):
        pass

    def fake_menu(self):
        pass

    def fake_delivery(self):
        pass

    def fake_category(self):
        pass

    def fake_cart(self):
        pass


db = Database()
