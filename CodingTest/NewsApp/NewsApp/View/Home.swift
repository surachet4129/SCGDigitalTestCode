//
//  Home.swift
//  NewsApp
//
//  Created by Surachet Raksee on 30/4/2565 BE.
//

import SwiftUI

struct Home: View {
    
    @ObservedObject private var newsListVM = NewsListViewModel()
    
    init(){
        newsListVM.load()
    }
    
    var body: some View {
        VStack{
            NewsListHeader()

            NewsListView(newsCollection: self.newsListVM.news, imageData: self.newsListVM.imageData)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
