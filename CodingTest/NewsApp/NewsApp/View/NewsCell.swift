//
//  NewsCell.swift
//  NewsApp
//
//  Created by Surachet Raksee on 30/4/2565 BE.
//

import SwiftUI

struct NewsCell: View {
    
    let news: NewsViewModel
    let image: Image
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 60, height: 200, alignment: .center)
                .clipped()
            
            Text(news.author)
                .font(.subheadline)
                .padding(10)
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
            
            Text(news.title)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Text(news.description)
                .font(.caption)
                .foregroundColor(.black)
        }
        .sheet(isPresented: $isPresented){
            NewsArticleWebView(newsUrl: self.news.url)
        }
        .onTapGesture {
            self.isPresented.toggle()
        }
    }
}

struct NewsCell_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
