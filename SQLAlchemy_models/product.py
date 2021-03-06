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
        'ProductHasIngredient',
        back_populates='product'
    )

    carts = relationship(
        'CartHasProduct',
        back_populates='product'
    )

    menus = relationship(
        'Menu',
        secondary='menu_has_product',
        back_populates='products'
    )

    type = Column(String(50))
    __mapper_args__ = {
        'polymorphic_identity': 'product',
        'polymorphic_on': type
    }


class Pizza(Product):
    __tablename__ = 'pizza'

    id = Column(Integer, ForeignKey('product.id'), primary_key=True)
    recipe = Column(MEDIUMTEXT)
    image_link = Column(String(100))
    description = Column(String(200))

    def __init__(self, **kwargs):
        kwargs.setdefault("VAT", "10")
        super().__init__(**kwargs)

    __mapper_args__ = {
        'polymorphic_identity': 'pizza',
    }
