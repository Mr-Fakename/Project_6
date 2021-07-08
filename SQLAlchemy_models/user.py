from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class User(Base):
    __tablename__ = 'user'

    id = Column(Integer, primary_key=True)
    username = Column(String(45), unique=True)
    password = Column(String(120))

    cart = relationship(
        'Cart',
        uselist=False,
        backref='user'
    )

    role = relationship(
        'Role',
        uselist=False,
        backref='user'
    )
