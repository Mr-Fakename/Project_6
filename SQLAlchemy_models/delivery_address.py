from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class DeliveryAddress(Base):
    __tablename__ = 'delivery_address'

    id = Column(Integer, primary_key=True, nullable=False)
    street_name = Column(String(120), nullable=False)
    street_num = Column(Integer, nullable=False)
    city_name = Column(String(120), nullable=False)
    city_pin = Column(Integer, nullable=False)
    order_id = Column(ForeignKey('order.id'), primary_key=True, nullable=False, index=True)

    order = relationship('Order')
