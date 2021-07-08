from sqlalchemy import create_engine

from CONFIG import MYSQL_USER, MYSQL_PASSWORD

from SQLAlchemy_models.base import Base
from SQLAlchemy_models import association_tables
from SQLAlchemy_models import user, cart, category, delivery_address, \
    ingredient, menu, order, order_status, payment, permission, pizzeria, product, \
    role, stock


def create_db():
    """ Establishes a connection between the chosen database and SQLAlchemy
    Drops the tables and recreates them, for an easy and efficient reset of the DB
    """
    engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@localhost')
    engine.execute("DROP DATABASE IF EXISTS project_6")
    engine.execute("CREATE DATABASE project_6")
    engine.execute("USE project_6")
    Base.metadata.create_all(engine)


create_db()
