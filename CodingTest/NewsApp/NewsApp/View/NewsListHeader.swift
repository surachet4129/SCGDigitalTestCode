//
//  NewsListHeader.swift
//  NewsApp
//
//  Created by Surachet Raksee on 30/4/2565 BE.
//

import SwiftUI

struct NewsListHeader: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            Text("News")
                .bold()
            
            .foregroundColor(.black)
            .font(.largeTitle)
            
            Text("Top Headline")
                .foregroundColor(.gray)
                .font(.largeTitle)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 10)
        
        Divider()
    }
}

struct NewsListHeader_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
