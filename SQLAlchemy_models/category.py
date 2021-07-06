from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base


class Category(Base):
    __tablename__ = 'category'

    id = Column(Integer, primary_key=True)
    name = Column(String(45), unique=True, nullable=False)
    description = Column(String(150))

    products = relationship('Product', secondary='product_has_category')
