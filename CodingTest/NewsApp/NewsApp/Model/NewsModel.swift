//
//  NewsModel.swift
//  NewsApp
//
//  Created by Surachet Raksee on 30/4/2565 BE.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let NewsModel = try? newJSONDecoder().decode(NewsModel.self, from: jsonData)

import Foundation

// MARK: - NewsModel
struct NewsModel: Codable {
    let status: String
    let totalResults: Int
    let articles: [News]
    
    enum CodingKeys: String,CodingKey{
        case status = "status"
        case totalResults = "totalResults"
        case articles = "articles"
    }
}

// MARK: - News
struct News: Codable {
    let source: Source
    let author: String?
    let title, articleDescription: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String
    
    enum CodingKeys: String,CodingKey{
        case source = "source"
        case author = "author"
        case title = "title"
        case articleDescription = "articleDescription"
        case url = "url"
        case urlToImage = "urlToImage"
        case publishedAt = "publishedAt"
        case content = "content"
    }
}

// MARK: - Source
struct Source: Codable {
    let id: String
    let name: String
    
    enum CodingKeys: String,CodingKey{
        case id = "id"
        case name = "name"
    }
}

