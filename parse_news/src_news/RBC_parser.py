from bs4 import BeautifulSoup
import requests
from selenium import webdriver
import datetime
from selenium.webdriver.firefox.options import Options
import time

# import sys
# sys.path.insert(1, '../')

from utils.utils import News_parser,Capsule_news,Set_Capsules_news

class RBC_parser(News_parser):
    def __init__(self,url="https://www.rbc.ru/crypto/"):
        # Variable
        self.url:str=url
        self.set_sapsules_news=Set_Capsules_news()
        self.update_news()
    
    def update_news(self):        
        list_news_links=self.__get_news_links()
        print("Start filling capsules: \n")
        self.__fill_capules(list_news_links)
        

    def __get_news_links(self):
        print("\nStarting parse www.rbc.ru/crypto: ")
        options = Options()
        options.add_argument("--headless")
        driver = webdriver.Firefox(options=options)

        driver.get(self.url)
        for _ in range(4):
            driver.execute_script("window.scrollTo(0,document.body.scrollHeight)")
            time.sleep(0.5)
        requst = driver.page_source
        driver.close()

        soup = BeautifulSoup(requst, "html.parser")
        news_article_link=soup.find_all("a", class_="item__link")
        list_news_links=[]

        for link in news_article_link:
            link=str(link.attrs["href"])
            list_news_links.append(link)
            print(link)
        return list_news_links
    
    def __fill_capules(self,list_news_links):
        
        for link_news in list_news_links:
            print(link_news)
            requst = requests.get(link_news)
            soup = BeautifulSoup(requst.text, "html.parser")
            
            image_link,titel,article_text,dtime,author=self.__get_atributes(soup,link_news)

            self.set_sapsules_news.add_news(Capsule_news
                                                        (   
                                                            link=str(link_news),
                                                            title=str(titel),
                                                            article_text=str(article_text),
                                                            image_link=str(image_link),
                                                            category=str(),
                                                            dtime=dtime,
                                                            author=author
                                                        )
                                            )
    
    @staticmethod    
    def html_to_text(article_html):
        soup = BeautifulSoup(article_html, features="html.parser")
        # kill all script and style elements
        for script in soup(["script", "style"]):
            script.extract()    # rip it out

        # get text
        text = soup.get_text()
        # break into lines and remove leading and trailing space on each
        lines = (line.strip() for line in text.splitlines())
        # break multi-headlines into a line each
        chunks = (phrase.strip() for line in lines for phrase in line.split("  "))
        # drop blank lines
        text = '\n'.join(chunk for chunk in chunks if chunk)
        return text
            
    
    def __get_atributes(self,soup,link_news):
        # Titile
        titel=soup.find_all("h1", class_="article__header__title-in js-slide-title")
        titel=str(titel).split("\n")[1].strip()
        print(f"Titel: {titel}\n")

        # Article_text
        article_text=soup.find_all("div", class_="article__text article__text_free")
        article_text=str(article_text[0])
        article_text=self.html_to_text(article_text)
        print(f"Article_text: {article_text}\n")
        
        # Image_link
        
        if "g-image article__main-image__image" in str(soup):
            image_link=soup.find_all("img", class_="g-image article__main-image__image")
            print("image_link",image_link)
            image_link=str(list(image_link)[0].get('src'))
            print(f"Image_link: {image_link}\n")
        else:
            image_link=None
        
        # Unix_time
        date=soup.find_all("time", class_="article__header__date")
        date=list(date)[0]
        date=str(date['datetime'])
        date=date.split("+")[0]
        dtime=datetime.datetime.strptime(date, '%Y-%m-%dT%H:%M:%S')
        # unix_time = int(datetime.datetime.timestamp(date))
        print(f"dtime: {dtime}\n")
        
        # Author
        if "article__authors__author__wrap" in str(soup):
            author=soup.find_all("div", class_="article__authors__author__wrap")
            author=list(author)[0].text.strip()
            print(f"Author: {author}\n")
        else:
            author=None

        
        return image_link,titel,article_text,dtime,author
