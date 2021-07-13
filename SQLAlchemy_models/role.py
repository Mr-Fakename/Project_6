from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Role(Base):
    __tablename__ = 'role'

    id = Column(Integer, primary_key=True)
    first_name = Column(String(45))
    last_name = Column(String(80))
    phone = Column(String(15), unique=True)

    user_account_id = Column(Integer, ForeignKey('user_account.id'))

    permissions = relationship(
        'Permission',
        secondary='role_has_permission',
        back_populates='roles'
    )

    type = Column(String(50))
    __mapper_args__ = {
        'polymorphic_identity': 'role',
        'polymorphic_on': type
    }


class Customer(Role):
    __tablename__ = 'customer'

    id = Column(Integer, ForeignKey('role.id'), primary_key=True)
    street_name = Column(String(120))
    street_num = Column(Integer)
    city_name = Column(String(120))
    city_pin = Column(Integer)
    email = Column(String(120), unique=True)

    orders = relationship(
        'Order',
        viewonly=True
    )

    __mapper_args__ = {
        'polymorphic_identity': 'customer',
    }


class Employee(Role):
    __tablename__ = 'employee'

    id = Column(Integer, ForeignKey('role.id'), primary_key=True)

    pizzerias = relationship(
        'Pizzeria',
        secondary='pizzeria_has_employee',
        back_populates='employees'
    )

    __mapper_args__ = {
        'polymorphic_identity': 'employee',
    }
