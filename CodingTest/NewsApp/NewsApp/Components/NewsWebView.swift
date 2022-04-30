//
//  NewsWebView.swift
//  NewsApp
//
//  Created by Surachet Raksee on 30/4/2565 BE.
//

import Foundation
import SwiftUI
import WebKit

struct NewsWebView: UIViewRepresentable {
    var urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: urlString) else{
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let webView = WKWebView()
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context){
        
    }
}
