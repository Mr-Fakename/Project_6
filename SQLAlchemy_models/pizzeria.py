from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Pizzeria(Base):
    __tablename__ = 'pizzeria'

    id = Column(Integer, primary_key=True, nullable=False)
    name = Column(String(45), unique=True, nullable=False)
    stock_id = Column(ForeignKey('stock.id'), primary_key=True, nullable=False, index=True)

    stock = relationship('Stock')
