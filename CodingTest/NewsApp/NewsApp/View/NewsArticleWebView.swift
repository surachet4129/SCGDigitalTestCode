//
//  NewsWebView.swift
//  NewsApp
//
//  Created by Surachet Raksee on 30/4/2565 BE.
//

import SwiftUI

struct NewsArticleWebView: View {
    
    var newsUrl: String
    
    var body: some View {
        NewsWebView(urlString: newsUrl)
            .padding(.top, 20)
    }
}

struct NewsArticleWebView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
