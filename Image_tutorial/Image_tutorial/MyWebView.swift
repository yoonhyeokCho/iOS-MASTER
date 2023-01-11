//
//  MyWebView.swift
//  Image_tutorial
//
//  Created by yoonhyeok on 2023/01/11.
//

import SwiftUI
import WebKit

// UIViewRepresentable -> uikit의 uiview를 사용할 수 있도록 해줌
// UIViewController 를 사용하고 싶다면 UIViewControllerRepresentable 이라 하면 됨.
struct MyWebView: UIViewRepresentable{
    
    
    
    var url: String
    
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        // url unwrapping
        guard let url = URL(string: self.url)
            else{
            return WKWebView()
        }
        
        // 인스턴스 생성
        let webview = WKWebView()
        
        // webview 로드
        webview.load(URLRequest(url: url))
        
        return webview
    }
    // 업데이트 ui view -> 뷰를 다시 그리기 때문에 업데이트 ui view 가 필요
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebview_Preview: PreviewProvider{
    static var previews: some View{
        MyWebView(url: "https://www.naver.com")
    }
}
