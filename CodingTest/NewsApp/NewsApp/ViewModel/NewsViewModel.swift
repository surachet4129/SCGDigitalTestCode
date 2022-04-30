//
//  NewsViewModel.swift
//  NewsApp
//
//  Created by Surachet Raksee on 30/4/2565 BE.
//

import SwiftUI

struct NewsViewModel {
    let news: News
    
    var author: String {
        return news.author ?? "Unknow"
    }
    
    var description: String {
        return news.articleDescription ?? ""
    }
    
    var title: String {
        return news.title ?? ""
    }
    
    var url: String {
        return news.url ?? ""
    }
    
    var urlToImage: String {
        return news.urlToImage ?? "https://www.kindpng.com/picc/m/182-1827064_breaking-news-banner-png-transparent-background-breaking-news.png"
    }
}

