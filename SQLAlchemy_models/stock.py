from sqlalchemy import Column, Integer, ForeignKey
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Stock(Base):
    __tablename__ = 'stock'

    id = Column(Integer, primary_key=True)
    pizzeria_id = Column(Integer, ForeignKey('pizzeria.id'))

    ingredients = relationship(
        'StockHasIngredient',
        back_populates='stock'
    )
