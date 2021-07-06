from sqlalchemy import Column, Integer, String

from SQLAlchemy_models.base import Base


class User(Base):
    __tablename__ = 'user'

    user_id = Column(Integer, primary_key=True)
    username = Column(String(45), unique=True)
    password = Column(String(120), nullable=False)
