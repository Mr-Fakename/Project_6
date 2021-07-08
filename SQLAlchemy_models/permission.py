from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Permission(Base):
    __tablename__ = 'permission'

    id = Column(Integer, primary_key=True)
    name = Column(String(45), unique=True)

    roles = relationship('Role', secondary='role_has_permission')
