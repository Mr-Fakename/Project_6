import datetime

from sqlalchemy import Column, DateTime, ForeignKey, Integer
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Cart(Base):
    __tablename__ = 'cart'

    id = Column(Integer, primary_key=True)
    created = Column(DateTime, default=datetime.datetime.utcnow)
    user_id = Column(Integer, ForeignKey('user.id'))

    products = relationship(
        'CartHasProduct',
        back_populates='cart'
    )
