from sqlalchemy import Column, DateTime, ForeignKey, Integer
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Cart(Base):
    __tablename__ = 'cart'

    id = Column(Integer, primary_key=True, nullable=False)
    created = Column(DateTime, nullable=False)
    user_id = Column(ForeignKey('user.user_id'), primary_key=True, nullable=False, index=True)

    user = relationship('User')
