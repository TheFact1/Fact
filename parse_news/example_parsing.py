from src_news.CNBC_crypto_parser import CNBC_crypto_parser
obj_CNBC=CNBC_crypto_parser(url="https://www.cnbc.com/cryptoworld/")

# get set of links to news
obj_CNBC.set_sapsules_news.get_set_links()

# get set of capules
set_capsules=obj_CNBC.set_sapsules_news.get_set_capsules()

capsula=set_capsules[4]


print(capsula.link)
print(capsula.title)
print(capsula.article_text)
print(capsula.image_link)  
print(capsula.category)   
