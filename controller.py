from sqlalchemy import create_engine
from sqlalchemy.orm import Session
import models


class Database:
    """
    Class that connects to the database and contains all the methods to interact with it, via
    the SQLAlchemy ORM
    """

    def __init__(self):
        self.engine = create_engine('mysql+pymysql://root:root@localhost/ocpizza_sa')
        self.session = Session(self.engine)


db = Database()
