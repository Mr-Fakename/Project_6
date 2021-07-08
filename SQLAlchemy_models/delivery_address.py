from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class DeliveryAddress(Base):
    __tablename__ = 'delivery_address'

    id = Column(Integer, primary_key=True)
    street_name = Column(String(120))
    street_num = Column(Integer)
    city_name = Column(String(120))
    city_pin = Column(Integer)
    order_id = Column(Integer, ForeignKey('order.id'), primary_key=True)

    order = relationship('Order')
