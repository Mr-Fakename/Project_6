import json
import random

from faker import Faker
from sqlalchemy import create_engine
from sqlalchemy import exc
from sqlalchemy.orm import Session

from CONFIG import MYSQL_USER, MYSQL_PASSWORD
from SQLAlchemy_models import association_tables
from SQLAlchemy_models import useraccount, cart, category, delivery_address, \
    ingredient, menu, order, order_status, payment, permission, pizzeria, product, \
    role, stock


class DummyData:
    """
    Class that connects to the database and contains all the methods to interact with it, via
    the SQLAlchemy ORM
    """

    def __init__(self):
        self.engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@localhost/project_6')
        self.session = Session(self.engine)

        self.fake = Faker('fr_FR')

        with open('dummy.json') as f:
            self.dummy_json = json.load(f)

    def fill_db(self):
        self.fake_pizzerias()
        self.fake_permissions()
        self.fake_employees()
        self.fake_customers()
        self.fake_ingredients()
        self.fake_stocks()
        self.fake_categories()
        self.fake_products()
        self.fake_menus()
        self.fake_cart()
        self.fake_order_status()
        self.fake_orders()
        self.fake_delivery_address()
        self.fake_payment()

    def fake_customers(self):
        for i in range(100):
            new_customer = role.Customer(
                first_name=self.fake.first_name(),
                last_name=self.fake.last_name(),
                phone=self.fake.phone_number(),
                street_name=self.fake.street_name(),
                street_num=self.fake.building_number(),
                city_name=self.fake.city(),
                city_pin=self.fake.postcode(),
            )

            new_customer.email = f"{new_customer.first_name}.{new_customer.last_name}@email.com"

            customer_permissions = ["Update User", "Delete User"]
            for j in customer_permissions:
                new_customer.permissions.append(
                    self.session.query(permission.Permission).filter(permission.Permission.name.ilike(f"%{j}%")).first()
                )

            new_customer_account = useraccount.UserAccount(
                username=f"{new_customer.first_name}.{new_customer.last_name}",
                password=self.fake.password()
            )
            new_customer.user_account = new_customer_account

            try:
                self.session.add(new_customer)
                self.session.commit()
            except exc.IntegrityError:
                self.session.rollback()
                continue

    def fake_employees(self):
        for i in range(50):
            new_employee = role.Employee(
                first_name=self.fake.first_name(),
                last_name=self.fake.last_name(),
                phone=self.fake.phone_number()
            )

            new_employee.pizzerias.append(
                self.session.query(pizzeria.Pizzeria).all()[random.randint(0, 4)]
            )

            employee_permissions = ["Update User", "Assign Order", "Change Order Status"]
            for j in employee_permissions:
                new_employee.permissions.append(
                    self.session.query(permission.Permission).filter(permission.Permission.name.ilike(f"%{j}%")).first()
                )

            new_employee_account = useraccount.UserAccount(
                username=f"{new_employee.first_name}.{new_employee.last_name}",
                password=self.fake.password()
            )
            new_employee.user_account = new_employee_account

            try:
                self.session.add(new_employee)
                self.session.commit()
            except exc.IntegrityError:
                self.session.rollback()
                continue

    def fake_pizzerias(self):
        for i in self.dummy_json['pizzerias']:
            new_pizzeria = pizzeria.Pizzeria(
                name=i
            )

            self.session.add(new_pizzeria)
            self.session.commit()

    def fake_stocks(self):
        for i in range(1, 6):
            new_stock = stock.Stock(
                pizzeria_id=i
            )

            all_ingredients = self.session.query(ingredient.Ingredient).all()
            ingredient_sample = random.sample(all_ingredients, k=random.randint(4, len(all_ingredients)))

            for j in ingredient_sample:
                stock_ingredient_association = association_tables.StockHasIngredient()
                stock_ingredient_association.ingredient = j
                stock_ingredient_association.ingredient_quantity = random.randint(0, 5000)
                new_stock.ingredients.append(stock_ingredient_association)

            self.session.add(new_stock)
            self.session.commit()

    def fake_products(self):
        for i in self.dummy_json['product_names']:
            new_pizza = product.Pizza(
                name=i,
                price=random.randint(8, 20),
                recipe=self.fake.text(),
                image_link=self.fake.file_path(depth=5, category='image'),
                description=self.fake.catch_phrase()
            )

            all_ingredients = self.session.query(ingredient.Ingredient).all()
            ingredient_sample = random.sample(all_ingredients, k=random.randint(4, len(all_ingredients)))

            for j in ingredient_sample:
                pizza_ingredient_association = association_tables.ProductHasIngredient()
                pizza_ingredient_association.ingredient = j
                pizza_ingredient_association.ingredient_quantity = random.randint(0, 50)
                new_pizza.ingredients.append(pizza_ingredient_association)

            all_categories = self.session.query(category.Category).all()
            categories_sample = random.sample(all_categories, k=random.randint(1, 2))

            for k in categories_sample:
                new_pizza.categories.append(k)

            self.session.add(new_pizza)
            self.session.commit()

    def fake_ingredients(self):
        for i in self.dummy_json['ingredients']:
            new_ingredient = ingredient.Ingredient(
                name=i
            )

            self.session.add(new_ingredient)
            self.session.commit()

    def fake_menus(self):
        for i in range(1, 6):
            new_menu = menu.Menu(
                pizzeria_id=i
            )

            all_pizzas = self.session.query(product.Pizza).all()
            pizzas_sample = random.sample(all_pizzas, k=random.randint(5, len(all_pizzas)))

            for j in pizzas_sample:
                new_menu.products.append(j)

            self.session.add(new_menu)
            self.session.commit()

    def fake_categories(self):
        for i in self.dummy_json['categories']:
            new_category = category.Category(
                name=i,
                description=self.fake.catch_phrase()
            )

            self.session.add(new_category)
            self.session.commit()

    def fake_cart(self):
        for i in range(51, 131):
            new_cart = cart.Cart(
                user_account_id=i
            )

            all_pizzas = self.session.query(product.Pizza).all()
            pizzas_sample = random.sample(all_pizzas, k=random.randint(1, len(all_pizzas)))

            for j in pizzas_sample:
                pizza_cart_association = association_tables.CartHasProduct()
                pizza_cart_association.product = j
                pizza_cart_association.product_quantity = random.randint(1, 5)
                pizza_cart_association.product_size = random.choice(self.dummy_json['sizes'])
                pizza_cart_association.cart = new_cart

            try:
                self.session.add(new_cart)
                self.session.commit()
            except:
                self.session.rollback()
                continue

    def fake_permissions(self):
        for i in self.dummy_json['permissions']:
            new_permission = permission.Permission(
                name=i
            )

            self.session.add(new_permission)
            self.session.commit()

    def fake_order_status(self):
        for i in self.dummy_json['order_status']:
            new_status = order_status.OrderStatus(
                name=i
            )

            self.session.add(new_status)
            self.session.commit()

    def fake_orders(self):
        for i in range(51, 100):

            customer = self.session.query(role.Customer).filter(role.Customer.id == i).first()

            new_order = order.Order(
                customer=customer,
                cart=customer.user_account.cart,
                employee=random.choice(self.session.query(role.Employee).all()),
                pizzeria=random.choice(self.session.query(pizzeria.Pizzeria).all()),
                order_status=random.choice(self.session.query(order_status.OrderStatus).all())
            )

            order_price = 0
            order_vat = 0

            for j in new_order.cart.products:
                sub_price = j.product_quantity * j.product.price
                if j.product_size == 21:
                    sub_price *= 1
                elif j.product_size == 27:
                    sub_price *= 1.2
                elif j.product_size == 31:
                    sub_price *= 1.5
                order_price += sub_price
                order_vat += (sub_price * j.product.VAT) / 100

            new_order.cost = round(order_price, 2)
            new_order.vat = round(order_vat, 2)
            new_order.total_cost = round(order_price + order_vat, 2)

            try:
                self.session.add(new_order)
                self.session.commit()
            except:
                self.session.rollback()
                continue

    def fake_payment(self):
        for i in self.session.query(order.Order).all():

            new_payment = payment.Payment(
                handed=i.total_cost,
                change=0,
                order_id=i.id
            )

            try:
                self.session.add(new_payment)
                self.session.commit()
            except:
                self.session.rollback()
                continue

    def fake_delivery_address(self):
        for i in self.session.query(order.Order).all():

            new_delivery_address = delivery_address.DeliveryAddress(
                street_name=self.fake.street_name(),
                street_num=self.fake.building_number(),
                city_name=self.fake.city(),
                city_pin=self.fake.postcode(),
                order_id=i.id
            )

            try:
                self.session.add(new_delivery_address)
                self.session.commit()
            except:
                self.session.rollback()
                continue
