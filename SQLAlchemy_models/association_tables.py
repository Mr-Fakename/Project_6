from sqlalchemy import Column, ForeignKey, Integer, Table
from sqlalchemy.orm import relationship

from SQLAlchemy_models.base import Base

metadata = Base.metadata

t_product_has_category = Table(
    'product_has_category', metadata,
    Column('product_id', ForeignKey('product.id'), primary_key=True, nullable=False, index=True),
    Column('category_id', ForeignKey('category.id'), primary_key=True, nullable=False, index=True)
)

t_product_has_ingredient = Table(
    'product_has_ingredient', metadata,
    Column('product_id', ForeignKey('product.id'), primary_key=True, nullable=False, index=True),
    Column('ingredient_id', ForeignKey('ingredient.id'), primary_key=True, nullable=False, index=True)
)

t_stock_has_ingredient = Table(
    'stock_has_ingredient', metadata,
    Column('stock_id', ForeignKey('stock.id'), primary_key=True, nullable=False, index=True),
    Column('ingredient_id', ForeignKey('ingredient.id'), primary_key=True, nullable=False, index=True)
)


class CartHasProduct(Base):
    __tablename__ = 'cart_has_product'

    product_id = Column(ForeignKey('product.id'), primary_key=True, nullable=False, index=True)
    product_quantity = Column(Integer, nullable=False)
    cart_id = Column(ForeignKey('cart.id'), primary_key=True, nullable=False, index=True)

    cart = relationship('Cart')
    product = relationship('Product')


t_role_has_permission = Table(
    'role_has_permission', metadata,
    Column('role_id', ForeignKey('role.id'), primary_key=True, nullable=False, index=True),
    Column('permission_id', ForeignKey('permission.id'), primary_key=True, nullable=False, index=True)
)

t_menu_has_product = Table(
    'menu_has_product', metadata,
    Column('menu_id', ForeignKey('menu.id'), primary_key=True, nullable=False, index=True),
    Column('product_id', ForeignKey('product.id'), primary_key=True, nullable=False, index=True)
)

t_pizzeria_has_employee = Table(
    'pizzeria_has_employee', metadata,
    Column('pizzeria_id', ForeignKey('pizzeria.id'), primary_key=True, nullable=False, index=True),
    Column('employee_id', ForeignKey('employee.id'), primary_key=True, nullable=False, index=True)
)
