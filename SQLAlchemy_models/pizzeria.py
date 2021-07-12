from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Pizzeria(Base):
    __tablename__ = 'pizzeria'

    id = Column(Integer, primary_key=True)
    name = Column(String(45), unique=True)

    employees = relationship(
        'Employee',
        secondary='pizzeria_has_employee',
        back_populates='pizzerias'
    )

    stock = relationship(
        'Stock',
        uselist=False,
        backref='pizzeria',
    )

    menu = relationship(
        'Menu',
        backref='pizzeria',
        uselist=False
    )
