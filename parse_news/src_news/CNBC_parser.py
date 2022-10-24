from bs4 import BeautifulSoup
import requests
from selenium import webdriver
import datetime
from selenium.webdriver.firefox.options import Options

# import sys
# sys.path.insert(1, '../')

from utils.utils import News_parser,Capsule_news,Set_Capsules_news


class CNBC_parser(News_parser):
    def __init__(self,url="https://www.cnbc.com/cryptoworld/"):
        # Variable
        self.url:str=url
        self.set_sapsules_news=Set_Capsules_news()
        self.update_news()
    
    def update_news(self):
        list_of_pages=self.__get_scattered_pages()
        # list_of_pages=["https://www.cnbc.com/cryptoworld/?page=2",
        # "https://www.cnbc.com/cryptoworld/?page=3",
        # "https://www.cnbc.com/cryptoworld/?page=4",
        # "https://www.cnbc.com/cryptoworld/?page=5",
        # "https://www.cnbc.com/cryptoworld/?page=6",
        # "https://www.cnbc.com/cryptoworld/?page=7",]
        
        list_news_links=self.__get_news_links(list_of_pages)
        # list_news_links=FAKE_list_of_news_article
        self.__fill_capules(list_news_links)
        
    def __get_scattered_pages(self):
        # 1. Collect all pages where scattered news
        list_of_pages=[]
        tmp_url=self.url[:]
        list_of_pages.append(tmp_url)
        while True:
            options = Options()
            options.add_argument("--headless")
            driver = webdriver.Firefox(options=options)
            driver.get(tmp_url)

            driver.execute_script("window.scrollTo(0,document.body.scrollHeight)")
            requst = driver.page_source
            soup = BeautifulSoup(requst, "html.parser")
            tmp_header=soup.find_all("div", class_="LoadMore-container")
            driver.close()

            if 'href=' in str(tmp_header):
                tmp_url=tmp_header[0].find('a')['href']
                print(tmp_url)
                list_of_pages.append(tmp_url)
            else:
                break
        list_of_pages=list(set(list_of_pages))
        print("\n")
        return list_of_pages

    @staticmethod
    def __get_news_links(list_of_pages):
        print("\nStarting parse every separete page")
        list_news_links=[]
        for news_url in list_of_pages:
            options = Options()
            options.add_argument("--headless")
            driver = webdriver.Firefox(options=options)
            driver.get(news_url)
            driver.execute_script("window.scrollTo(0,document.body.scrollHeight)")
            requst = driver.page_source
            driver.close()
            soup = BeautifulSoup(requst, "html.parser")
            data=soup.find_all("div", class_=["Card-titleContainer","RiverCard-titleContainer"])
            for div in data:
                links = div.find_all('a')
                for a in links:
                    list_news_links.append(a['href'])
                    print(a['href'])
        list_news_links=list(set(list_news_links))
        return list_news_links
    
    def __fill_capules(self,list_news_links):
        
        for link_news in list_news_links:
            print(link_news)
            requst = requests.get(link_news)
            soup = BeautifulSoup(requst.text, "html.parser")

            if """www.cnbc.com/video/""" in link_news:
                image_link,titel,article_text,dtime,author=self.__video_type(soup,link_news)
            else:
                image_link,titel,article_text,dtime,author=self.__text_type(soup,link_news)

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
            
    
    def __text_type(self,soup,link_news):
        # Image_link
        image_link=soup.find(itemprop="primaryImageOfPage").get("content")
        print("image_link: ",image_link,"\n")

        # Title
        titel_html=soup.find_all("h1", class_="ArticleHeader-headline")
        titel=list(titel_html)[0].text
        print("titel: ",titel,"\n")

        # Article_text
        article_html=str(soup.find_all("div", id="SpecialReportArticle-ArticleBody-6"))
        article_text=self.html_to_text(article_html)
        print("article_text: ",article_text,"\n")

        # Unix_time
        year, month,day=link_news[21:].split("/")[:3]
        date_example = f"{month}/{day}/{year} 6"
        date_format = datetime.datetime.strptime(date_example,"%m/%d/%Y %H")
        UTC_OFFSET = -4 # US
        dtime = date_format - datetime.timedelta(hours=UTC_OFFSET)
        # unix_time = int(datetime.datetime.timestamp(result_utc_datetime))
        print("dtime",dtime,"\n")

        # Author
        author=str(soup.find_all("a", class_="Author-authorName")[0].text)
        print("author: ", author,"\n")
        
        return image_link,titel,article_text,dtime,author

    def __video_type(self,soup,link_news):
        # Image
        image_link=soup.find_all("div", class_="InlineVideo-inlineThumbnailContainer")
        image_link=list(image_link[0])[0].get('src')
        print("image_link: ",image_link,"\n")
        
        # Title
        titel=soup.find_all("h1", class_="ClipPlayer-clipPlayerIntroTitle")
        titel=str(list(titel)[0].text)
        print("titel: ",titel,"\n")

        # Article_text
        article_text=soup.find_all("div", class_="ClipPlayer-clipPlayerIntroSummary")
        article_text=str(list(article_text)[0].text)
        print("article_text: ",article_text,"\n")
        
        # Unix_time
        year, month,day=link_news[27:].split("/")[:3]
        date_example = f"{month}/{day}/{year} 6"
        date_format = datetime.datetime.strptime(date_example,"%m/%d/%Y %H")
        UTC_OFFSET = -4 # US
        dtime = date_format - datetime.timedelta(hours=UTC_OFFSET)
        # unix_time = int(datetime.datetime.timestamp(result_utc_datetime))
        print("dtime",dtime,"\n")

        # Author
        author=soup.find_all("div", class_="ClipPlayer-author")
        if not list(author)==[]:
            author=str(author[0].find('a').text)
        else:
            author="None"
        print("author: ", author,"\n")
        return image_link,titel,article_text,dtime,author
               