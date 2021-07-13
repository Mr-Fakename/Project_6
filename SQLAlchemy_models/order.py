import datetime

from sqlalchemy import Column, DateTime, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Order(Base):
    __tablename__ = 'order'

    id = Column(Integer, primary_key=True, autoincrement=True)

    cart_id = Column(ForeignKey('cart.id'), primary_key=True)
    pizzeria_id = Column(ForeignKey('pizzeria.id'), primary_key=True)
    employee_id = Column(ForeignKey('employee.id'), primary_key=True)
    customer_id = Column(ForeignKey('customer.id'), primary_key=True)
    order_status_id = Column(ForeignKey('order_status.id'), primary_key=True)

    ordered = Column(DateTime, default=datetime.datetime.utcnow)

    cost = Column(String(10))
    vat = Column(String(10))
    total_cost = Column(String(10))

    cart = relationship('Cart')
    customer = relationship('Customer')
    employee = relationship('Employee')
    order_status = relationship('OrderStatus')
    pizzeria = relationship('Pizzeria')

    delivery_address = relationship(
        'DeliveryAddress',
        back_populates='order',
        uselist=False
    )

    payment = relationship(
        'Payment',
        back_populates='order',
        uselist=False
    )
