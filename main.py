from sqlalchemy import create_engine
from sqlalchemy.orm import Session

from CONFIG import MYSQL_USER, MYSQL_PASSWORD

from db_creation import create_db
from dummy_data.db_seed import DummyData
from SQLAlchemy_models import *


def initiate_db():
    create_db()
    dd = DummyData()
    dd.fill_db()


class Database:
    def __init__(self):
        self.engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PASSWORD}@localhost/project_6')
        self.session = Session(self.engine)


if __name__ == '__main__':

    db = Database()
