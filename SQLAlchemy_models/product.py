from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.dialects.mysql import MEDIUMTEXT
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Product(Base):
    __tablename__ = 'product'

    id = Column(Integer, primary_key=True)
    name = Column(String(60), unique=True)
    VAT = Column(Integer)
    price = Column(Integer)

    categories = relationship(
        'Category',
        secondary='product_has_category',
        back_populates="products")

    ingredients = relationship(
        'Ingredient',
        secondary='product_has_ingredient',
        back_populates='products'
    )

    carts = relationship(
        'CartHasProduct',
        back_populates='product'
    )

    type = Column(String(50))
    __mapper_args__ = {
        'polymorphic_identity': 'product',
        'polymorphic_on': type
    }


class Pizza(Product):
    __tablename__ = 'pizza'

    id = Column(ForeignKey('product.id'), primary_key=True, index=True)
    ingredient_quantity = Column(Integer)
    recipe = Column(MEDIUMTEXT)
    size = Column(Integer)
    image_link = Column(String(100))
    description = Column(String(200))

    __mapper_args__ = {
        'polymorphic_identity': 'pizza',
    }
