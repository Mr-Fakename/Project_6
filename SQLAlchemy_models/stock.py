from sqlalchemy import Column, Integer

from SQLAlchemy_models.base import Base


class Stock(Base):
    __tablename__ = 'stock'

    id = Column(Integer, primary_key=True)
    ingredient_id = Column(Integer)
    item_quantity = Column(Integer)
    pizzeria_id = Column(Integer, unique=True)
