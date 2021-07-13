from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class UserAccount(Base):
    __tablename__ = 'user_account'

    id = Column(Integer, primary_key=True)
    username = Column(String(45), unique=True)
    password = Column(String(120))

    cart = relationship(
        'Cart',
        uselist=False,
        backref='user_account'
    )

    role = relationship(
        'Role',
        uselist=False,
        backref='user_account'
    )
