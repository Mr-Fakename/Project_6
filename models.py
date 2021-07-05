# coding: utf-8
from sqlalchemy import Column, DateTime, ForeignKey, Integer, String, Table
from sqlalchemy.dialects.mysql import MEDIUMTEXT
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship

Base = declarative_base()
metadata = Base.metadata


class Category(Base):
    __tablename__ = 'category'

    id = Column(Integer, primary_key=True)
    name = Column(String(45), unique=True)
    description = Column(String(150))

    products = relationship('Product', secondary='product_has_category')


class Ingredient(Base):
    __tablename__ = 'ingredient'

    id = Column(Integer, primary_key=True)
    name = Column(String(45))

    products = relationship('Product', secondary='product_has_ingredient')
    stocks = relationship('Stock', secondary='stock_has_ingredient')


class OrderStatus(Base):
    __tablename__ = 'order_status'

    id = Column(Integer, primary_key=True)
    name = Column(String(45), unique=True)


class Permission(Base):
    __tablename__ = 'permission'

    id = Column(Integer, primary_key=True)
    name = Column(String(45), unique=True)

    roles = relationship('Role', secondary='role_has_permission')


class Product(Base):
    __tablename__ = 'product'

    id = Column(Integer, primary_key=True)
    name = Column(String(60), unique=True)
    category = Column(String(60))
    VAT = Column(Integer)
    price = Column(Integer)


class Pizza(Product):
    __tablename__ = 'pizza'

    id = Column(ForeignKey('product.id'), primary_key=True, index=True)
    ingredient_quantity = Column(Integer)
    recipe = Column(MEDIUMTEXT)
    size = Column(Integer)
    image_link = Column(String(100))
    description = Column(String(200))


class Stock(Base):
    __tablename__ = 'stock'

    id = Column(Integer, primary_key=True)
    ingredient_id = Column(Integer)
    item_quantity = Column(Integer)
    pizzeria_id = Column(Integer, unique=True)


class User(Base):
    __tablename__ = 'user'

    user_id = Column(Integer, primary_key=True)
    username = Column(String(45), unique=True)
    password = Column(String(120))


class Cart(Base):
    __tablename__ = 'cart'

    id = Column(Integer, primary_key=True, nullable=False)
    created = Column(DateTime)
    user_id = Column(ForeignKey('user.user_id'), primary_key=True, nullable=False, index=True)

    user = relationship('User')


class Pizzeria(Base):
    __tablename__ = 'pizzeria'

    id = Column(Integer, primary_key=True, nullable=False)
    name = Column(String(45), unique=True)
    stock_id = Column(ForeignKey('stock.id'), primary_key=True, nullable=False, index=True)

    stock = relationship('Stock')


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


class Role(Base):
    __tablename__ = 'role'

    id = Column(Integer, primary_key=True, nullable=False)
    name = Column(String(45), nullable=False, unique=True)
    user_id = Column(ForeignKey('user.user_id'), primary_key=True, nullable=False, index=True)

    user = relationship('User')


class Customer(Role):
    __tablename__ = 'customer'

    id = Column(ForeignKey('role.id'), primary_key=True, index=True)
    first_name = Column(String(45))
    last_name = Column(String(80))
    street_name = Column(String(120))
    street_num = Column(Integer)
    city_name = Column(String(120))
    city_pin = Column(Integer)
    phone = Column(String(15), unique=True)
    email = Column(String(120), unique=True)


class Employee(Role):
    __tablename__ = 'employee'

    id = Column(ForeignKey('role.id'), primary_key=True, index=True)
    first_name = Column(String(45))
    last_name = Column(String(80))
    phone = Column(String(15), unique=True)

    pizzerias = relationship('Pizzeria', secondary='pizzeria_has_employee')


t_stock_has_ingredient = Table(
    'stock_has_ingredient', metadata,
    Column('stock_id', ForeignKey('stock.id'), primary_key=True, nullable=False, index=True),
    Column('ingredient_id', ForeignKey('ingredient.id'), primary_key=True, nullable=False, index=True)
)


class CartHasProduct(Base):
    __tablename__ = 'cart_has_product'

    product_id = Column(ForeignKey('product.id'), primary_key=True, nullable=False, index=True)
    product_quantity = Column(Integer)
    cart_id = Column(ForeignKey('cart.id'), primary_key=True, nullable=False, index=True)

    cart = relationship('Cart')
    product = relationship('Product')


class Menu(Base):
    __tablename__ = 'menu'

    id = Column(Integer, primary_key=True, nullable=False)
    pizzeria_id = Column(ForeignKey('pizzeria.id'), primary_key=True, nullable=False, index=True)

    pizzeria = relationship('Pizzeria')
    products = relationship('Product', secondary='menu_has_product')


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


class Order(Base):
    __tablename__ = 'order'

    id = Column(Integer, primary_key=True, nullable=False)
    ordercol = Column(String(45))
    cart_id = Column(ForeignKey('cart.id'), primary_key=True, nullable=False, index=True)
    pizzeria_id = Column(ForeignKey('pizzeria.id'), primary_key=True, nullable=False, index=True)
    employee_id = Column(ForeignKey('employee.id'), primary_key=True, nullable=False, index=True)
    customer_id = Column(ForeignKey('customer.id'), primary_key=True, nullable=False, index=True)
    order_status_id = Column(ForeignKey('order_status.id'), primary_key=True, nullable=False, index=True)
    cost = Column(String(15))
    ordered = Column(DateTime)

    cart = relationship('Cart')
    customer = relationship('Customer')
    employee = relationship('Employee')
    order_status = relationship('OrderStatus')
    pizzeria = relationship('Pizzeria')


t_pizzeria_has_employee = Table(
    'pizzeria_has_employee', metadata,
    Column('pizzeria_id', ForeignKey('pizzeria.id'), primary_key=True, nullable=False, index=True),
    Column('employee_id', ForeignKey('employee.id'), primary_key=True, nullable=False, index=True)
)


class DeliveryAddress(Base):
    __tablename__ = 'delivery_address'

    id = Column(Integer, primary_key=True, nullable=False)
    street_name = Column(String(120))
    street_num = Column(Integer)
    city_name = Column(String(120))
    city_pin = Column(Integer)
    order_id = Column(ForeignKey('order.id'), primary_key=True, nullable=False, index=True)

    order = relationship('Order')


class Payment(Base):
    __tablename__ = 'payment'

    id = Column(Integer, primary_key=True, nullable=False)
    handed = Column(String(45))
    change = Column(String(45))
    order_id = Column(ForeignKey('order.id'), primary_key=True, nullable=False, index=True)

    order = relationship('Order')
