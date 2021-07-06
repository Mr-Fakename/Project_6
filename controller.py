from sqlalchemy import create_engine
from sqlalchemy.orm import Session

from config import MYSQL_USER, MYSQL_PASSWORD

from SQLAlchemy_models import association_tables
from SQLAlchemy_models import user, cart, category, delivery_address, \
    ingredient, menu, order, order_status, payment, permission, pizzeria, product, \
    role, stock


class Database:
    """
    Class that connects to the database and contains all the methods to interact with it, via
    the SQLAlchemy ORM
    """

    def __init__(self):
        self.engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@localhost/project_6')
        self.session = Session(self.engine)


db = Database()

cat = db.session.query(category.Category).first()
piz = db.session.query(product.Pizza).first()
