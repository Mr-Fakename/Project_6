from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Payment(Base):
    __tablename__ = 'payment'

    id = Column(Integer, primary_key=True, nullable=False)
    handed = Column(String(45), nullable=False)
    change = Column(String(45), nullable=False)
    order_id = Column(ForeignKey('order.id'), primary_key=True, nullable=False, index=True)

    order = relationship('Order')
