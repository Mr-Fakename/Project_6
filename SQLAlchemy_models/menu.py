from sqlalchemy import Column, ForeignKey, Integer
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Menu(Base):
    __tablename__ = 'menu'

    id = Column(Integer, primary_key=True)
    pizzeria_id = Column(Integer, ForeignKey('pizzeria.id'))

    pizzeria = relationship(
        'Pizzeria',
        back_populates='menu'
    )

    products = relationship('Product', secondary='menu_has_product')
