from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Payment(Base):
    __tablename__ = 'payment'

    id = Column(Integer, primary_key=True)
    handed = Column(String(45))
    change = Column(String(45))
    order_id = Column(ForeignKey('order.id'))

    order = relationship(
        'Order',
        back_populates='payment'
    )
