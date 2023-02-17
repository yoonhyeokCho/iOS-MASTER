//
//  MyWebView.swift
//  QRCodeReader
//
//  Created by yoonhyeok on 2023/02/17.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
   
    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {

        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()

        webview.load(URLRequest(url: url))
        
        return webview
        
    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
           
       }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
