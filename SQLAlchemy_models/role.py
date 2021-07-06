from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Role(Base):
    __tablename__ = 'role'

    id = Column(Integer, primary_key=True, nullable=False)
    name = Column(String(45), nullable=False, unique=True)
    user_id = Column(ForeignKey('user.user_id'), primary_key=True, nullable=False, index=True)

    user = relationship('User')


class Customer(Role):
    __tablename__ = 'customer'

    id = Column(ForeignKey('role.id'), primary_key=True, index=True)
    first_name = Column(String(45), nullable=False)
    last_name = Column(String(80), nullable=False)
    street_name = Column(String(120))
    street_num = Column(Integer)
    city_name = Column(String(120))
    city_pin = Column(Integer)
    phone = Column(String(15), unique=True)
    email = Column(String(120), unique=True)


class Employee(Role):
    __tablename__ = 'employee'

    id = Column(ForeignKey('role.id'), primary_key=True, index=True)
    first_name = Column(String(45), nullable=False)
    last_name = Column(String(80), nullable=False)
    phone = Column(String(15), unique=True)

    pizzerias = relationship('Pizzeria', secondary='pizzeria_has_employee')
