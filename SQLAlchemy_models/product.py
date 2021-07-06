from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.dialects.mysql import MEDIUMTEXT

from SQLAlchemy_models.base import Base


class Product(Base):
    __tablename__ = 'product'

    id = Column(Integer, primary_key=True)
    name = Column(String(60), unique=True)
    category = Column(String(60))
    VAT = Column(Integer, nullable=False)
    price = Column(Integer, nullable=False)


class Pizza(Product):
    __tablename__ = 'pizza'

    id = Column(ForeignKey('product.id'), primary_key=True, index=True)
    ingredient_quantity = Column(Integer)
    recipe = Column(MEDIUMTEXT)
    size = Column(Integer)
    image_link = Column(String(100))
    description = Column(String(200))
