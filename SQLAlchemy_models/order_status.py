from sqlalchemy import Column, Integer, String

from SQLAlchemy_models.base import Base


class OrderStatus(Base):
    __tablename__ = 'order_status'

    id = Column(Integer, primary_key=True)
    name = Column(String(45), unique=True, nullable=False)
