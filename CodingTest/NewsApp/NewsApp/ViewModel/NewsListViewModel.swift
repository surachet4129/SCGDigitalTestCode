//
//  NewsListViewModel.swift
//  NewsApp
//
//  Created by Surachet Raksee on 30/4/2565 BE.
//

import Foundation

class NewsListViewModel: ObservableObject {
    @Published var news = [NewsViewModel]()
    @Published var imageData = [String: Data]()
    
    func load(){
        getNews()
    }
    
    private func getNews(){
        let networkManager = NetworkManager()
        networkManager.getNews{ (newsArticle) in
            guard let news = newsArticle else { return }
            
            let newsViewModel = news.map(NewsViewModel.init)
            self.getImages(for: newsViewModel)
            
            DispatchQueue.main.async {
                self.news = newsViewModel
            }
            
        }
    }
    
    private func getImages(for news: [NewsViewModel]) {
        let networkManager = NetworkManager()
        news.forEach{ news in

            guard !news.urlToImage.isEmpty else { return }
            
            networkManager.getImage(urlString: news.urlToImage) { data in
                guard let data = data else { return }
                
                DispatchQueue.main.async {
                    self.imageData[news.urlToImage] = data
                }
            }
        }
    }
}

