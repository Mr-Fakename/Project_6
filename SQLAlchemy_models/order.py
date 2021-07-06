from sqlalchemy import Column, DateTime, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Order(Base):
    __tablename__ = 'order'

    id = Column(Integer, primary_key=True, nullable=False)
    cart_id = Column(ForeignKey('cart.id'), primary_key=True, nullable=False, index=True)
    pizzeria_id = Column(ForeignKey('pizzeria.id'), primary_key=True, nullable=False, index=True)
    employee_id = Column(ForeignKey('employee.id'), primary_key=True, nullable=False, index=True)
    customer_id = Column(ForeignKey('customer.id'), primary_key=True, nullable=False, index=True)
    order_status_id = Column(ForeignKey('order_status.id'), primary_key=True, nullable=False, index=True)
    cost = Column(String(15))
    ordered = Column(DateTime)

    cart = relationship('Cart')
    customer = relationship('Customer')
    employee = relationship('Employee')
    order_status = relationship('OrderStatus')
    pizzeria = relationship('Pizzeria')
