import random
import json

from sqlalchemy import create_engine
from sqlalchemy.orm import Session

from CONFIG import MYSQL_USER, MYSQL_PASSWORD

from SQLAlchemy_models import association_tables
from SQLAlchemy_models import user, cart, category, delivery_address, \
    ingredient, menu, order, order_status, payment, permission, pizzeria, product, \
    role, stock

from faker import Faker


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
            for i in customer_permissions:
                new_customer.permissions.append(
                    self.session.query(permission.Permission).filter(permission.Permission.name.ilike(f"%{i}%")).first()
                )

            new_customer_account = user.User(
                username=f"{new_customer.first_name}.{new_customer.last_name}",
                password=self.fake.password()
            )
            new_customer.user = new_customer_account

            self.session.add(new_customer)
            self.session.commit()

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
            for i in employee_permissions:
                new_employee.permissions.append(
                    self.session.query(permission.Permission).filter(permission.Permission.name.ilike(f"%{i}%")).first()
                )

            new_employee_account = user.User(
                username=f"{new_employee.first_name}.{new_employee.last_name}",
                password=self.fake.password()
            )
            new_employee.user = new_employee_account

            self.session.add(new_employee)
            self.session.commit()

    def fake_pizzerias(self):
        for i in range(5):
            new_pizzeria = pizzeria.Pizzeria(
                name=self.fake.company()
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

            for i in ingredient_sample:
                stock_ingredient_association = association_tables.StockHasIngredient()
                stock_ingredient_association.ingredient = i
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

            all_ingredients = dd.session.query(ingredient.Ingredient).all()
            ingredient_sample = random.sample(all_ingredients, k=random.randint(4, len(all_ingredients)))

            for i in ingredient_sample:
                pizza_ingredient_association = association_tables.ProductHasIngredient()
                pizza_ingredient_association.ingredient = i
                pizza_ingredient_association.ingredient_quantity = random.randint(0, 50)
                new_pizza.ingredients.append(pizza_ingredient_association)

            all_categories = dd.session.query(category.Category).all()
            categories_sample = random.sample(all_categories, k=random.randint(1, 2))

            for i in categories_sample:
                new_pizza.categories.append(i)

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

            all_pizzas = dd.session.query(product.Pizza).all()
            pizzas_sample = random.sample(all_pizzas, k=random.randint(5, len(all_pizzas)))

            for i in pizzas_sample:
                new_menu.products.append(i)

            self.session.add(new_menu)
            self.session.commit()

    def fake_delivery(self):
        pass

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
                user_id=i
            )

            all_pizzas = dd.session.query(product.Pizza).all()
            pizzas_sample = random.sample(all_pizzas, k=random.randint(1, len(all_pizzas)))

            for i in pizzas_sample:
                pizza_cart_association = association_tables.CartHasProduct()
                pizza_cart_association.product = i
                pizza_cart_association.product_quantity = random.randint(1, 5)
                pizza_cart_association.product_size = random.choice(dd.dummy_json['sizes'])
                pizza_cart_association.cart = new_cart

            self.session.add(new_cart)
            self.session.commit()

    def fake_permissions(self):
        for i in self.dummy_json['permissions']:
            new_permission = permission.Permission(
                name=i
            )

            self.session.add(new_permission)
            self.session.commit()


dd = DummyData()

""" Dummy data creation sequence """
# dd.fake_pizzerias()
# dd.fake_permissions()
# dd.fake_employees()
# dd.fake_customers()
# dd.fake_ingredients()
# dd.fake_stocks()
# dd.fake_categories()
# dd.fake_products()
# dd.fake_menus()
# dd.fake_cart()
