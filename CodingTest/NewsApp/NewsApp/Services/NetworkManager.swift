//
//  NetworkManager.swift
//  NewsApp
//
//  Created by Surachet Raksee on 30/4/2565 BE.
//

import Foundation

class NetworkManager {
    private let baseUrlString = "https://newsapi.org/v2/"
    private let techTopHeadline = "top-headlines?sources=techcrunch"
    
    func getNews(completion: @escaping (([News]?) -> Void)){
        let urlString = "\(baseUrlString)\(techTopHeadline)&apiKey=\(API.key)"
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil, let data = data else {
                completion(nil)
                return
            }
            
            let newsResp = try? JSONDecoder().decode(NewsModel.self, from: data)
            newsResp == nil ? completion(nil) : completion(newsResp!.articles)
        }
        .resume()
    }
    
    func getImage(urlString: String, completion: @escaping (Data?) -> Void){
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil, let data = data else{
                completion(nil)
                return
            }
            completion(data)
        }
        .resume()
    }
}

