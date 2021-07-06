from sqlalchemy import Column, ForeignKey, Integer
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Menu(Base):
    __tablename__ = 'menu'

    id = Column(Integer, primary_key=True, nullable=False)
    pizzeria_id = Column(ForeignKey('pizzeria.id'), primary_key=True, nullable=False, index=True)

    pizzeria = relationship('Pizzeria')
    products = relationship('Product', secondary='menu_has_product')
