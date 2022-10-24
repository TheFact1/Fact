from abc import ABCMeta, abstractmethod, abstractproperty
from typing import Union

class News_parser():
    __metaclass__=ABCMeta

    @abstractmethod
    def update_news():
        """Update list"""
        pass
    
    # TODO @abstractproperty set_sapsules_news
    # TODO @abstractproperty url


class Capsule_news:
    def __init__ (self, link:str=str(),
                        title:str=str(),
                        article_text:str=str(),
                        image_link:str=str(),
                        dtime=int(),
                        author:str=str(),
                        category:str=str()
                    ):
        self.link         :str=link
        self.title        :str=title
        self.article_text :str=article_text
        self.image_link   :Union[str, None]=image_link
        self.dtime        =dtime
        self.author       :Union[str, None]=author
        self.category     :str=category


class Set_Capsules_news:
    def __init__(self):
        self.__list_capsules=list()
        
    def get_set_links(self):
        set_links=[]
        
        for obj_capsule in self.__list_capsules:
            set_links.append(obj_capsule.link)
        return set_links
        
    def add_news(self,capsule):
        if not isinstance(capsule, Capsule_news):
            raise ValueError('capsule should be type: Capsule_news')
        set_links=self.get_set_links()
        
        if  capsule.link not in set_links:
            self.__list_capsules.append(capsule)
        else:
            print(f"This News {capsule.link} already in set")

    def __len__(self):
        return len(self.__list_capsules)
    
    def get_set_capsules(self):
        return self.__list_capsules
