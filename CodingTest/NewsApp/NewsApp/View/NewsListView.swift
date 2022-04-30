//
//  NewsListView.swift
//  NewsApp
//
//  Created by Surachet Raksee on 30/4/2565 BE.
//

import SwiftUI

struct NewsListView: View {
    
    let newsCollection: [NewsViewModel]
    let imageData: [String: Data]
    
    var body: some View {
        
        List(self.newsCollection, id: \.url){
            news in
            NewsCell(news: news, image: Image(uiImage: self.imageData[news.urlToImage] == nil ? UIImage(systemName: "doc.append")! : UIImage(data: self.imageData[news.urlToImage]!)!))
        }
        .background(Color.white.ignoresSafeArea())
        .onAppear {
            // Set the default to clear
            UITableView.appearance().backgroundColor = .clear
        }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
