//
//  MyWebView.swift
//  ToDoList
//
//  Created by yoonhyeok on 2023/02/10.
//

import SwiftUI
import WebKit

// uikit 의 uiview 를 사용할수 있도록 한다.
// UIViewControllerRepresentable
struct MyWebview: UIViewRepresentable {
   
    var urlToLoad: String
    
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
        
        return webview
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
           
       }
    
}


struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
