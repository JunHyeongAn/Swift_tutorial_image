//
//  MyWebView.swift
//  Swift_tutorial_image
//
//  Created by 안준형 on 2022/05/27.
//

import SwiftUI
import WebKit

struct MyWebView : UIViewRepresentable {
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
    }
    
    var url : String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let urlReuqest = URLRequest(url: url)
        webView.load(urlReuqest)
        return webView
    }
}
