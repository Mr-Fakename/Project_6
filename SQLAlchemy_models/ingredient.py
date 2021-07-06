from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Ingredient(Base):
    __tablename__ = 'ingredient'

    id = Column(Integer, primary_key=True)
    name = Column(String(45), nullable=False)

    products = relationship('Product', secondary='product_has_ingredient')
    stocks = relationship('Stock', secondary='stock_has_ingredient')
