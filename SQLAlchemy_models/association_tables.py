from sqlalchemy import Column, ForeignKey, Integer, Table, UniqueConstraint
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base

metadata = Base.metadata


class CartHasProduct(Base):
    __tablename__ = 'cart_has_product'

    product_id = Column(Integer, ForeignKey('product.id'), primary_key=True)
    cart_id = Column(Integer, ForeignKey('cart.id'), primary_key=True)
    product_quantity = Column(Integer, server_default="1")
    product_size = Column(Integer, server_default=None)

    cart = relationship(
        'Cart',
        back_populates='products'
    )

    product = relationship(
        'Product',
        back_populates='carts'
    )


class StockHasIngredient(Base):
    __tablename__ = 'stock_has_ingredient'

    ingredient_id = Column(Integer, ForeignKey('ingredient.id'), primary_key=True)
    stock_id = Column(Integer, ForeignKey('stock.id'), primary_key=True)
    ingredient_quantity = Column(Integer)

    stock = relationship(
        'Stock',
        back_populates='ingredients'
    )

    ingredient = relationship(
        'Ingredient',
        back_populates='stocks'
    )


class ProductHasIngredient(Base):
    __tablename__ = 'product_has_ingredient'

    ingredient_id = Column(Integer, ForeignKey('ingredient.id'), primary_key=True)
    product_id = Column(Integer, ForeignKey('product.id'), primary_key=True)
    ingredient_quantity = Column(Integer)

    product = relationship(
        'Product',
        back_populates='ingredients'
    )

    ingredient = relationship(
        'Ingredient',
        back_populates='products'
    )


product_has_category = Table(
    'product_has_category', metadata,
    Column('product_id', Integer, ForeignKey('product.id')),
    Column('category_id', Integer, ForeignKey('category.id')),
    UniqueConstraint('product_id', 'category_id', name='_product_category_uc')
)

role_has_permission = Table(
    'role_has_permission', metadata,
    Column('role_id', Integer, ForeignKey('role.id')),
    Column('permission_id', Integer, ForeignKey('permission.id')),
    UniqueConstraint('role_id', 'permission_id', name='_stock_ingredient_uc')
)

menu_has_product = Table(
    'menu_has_product', metadata,
    Column('menu_id', Integer, ForeignKey('menu.id')),
    Column('product_id', Integer, ForeignKey('product.id')),
    UniqueConstraint('menu_id', 'product_id', name='_stock_ingredient_uc')
)

pizzeria_has_employee = Table(
    'pizzeria_has_employee', metadata,
    Column('pizzeria_id', Integer, ForeignKey('pizzeria.id')),
    Column('employee_id', Integer, ForeignKey('employee.id')),
    UniqueConstraint('pizzeria_id', 'employee_id', name='_stock_ingredient_uc')
)
