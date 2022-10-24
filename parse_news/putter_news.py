import pickle
from datetime import datetime

import sqlalchemy as sa
from db import session_scope
from db.news import News

from utils.db_utils import no_link,print_meta,insert_capsula

# from src_news.CNBC_parser import CNBC_parser
# from src_news.RBC_parser import RBC_parser

active_parsers=[CNBC_parser(),RBC_parser()]
# # # active_parsers=[RBC_parser()]



# # # write
# with open('active_parsers_1.pkl', 'wb') as fp:
#     pickle.dump(active_parsers,fp)

# print("writed pickle")

# read
with open("active_parsers_1.pkl", "rb") as fp:
    active_parsers = pickle.load(fp)

if __name__ == "__main__":
    for obj_websites in active_parsers:
        for capsula in obj_websites.set_sapsules_news.get_set_capsules():
            print_meta(capsula)
            if no_link(News,capsula.link):
                insert_capsula(capsula)
            else:
                print("CAPSULA exist!!!!!!!!!!!!!!!")
