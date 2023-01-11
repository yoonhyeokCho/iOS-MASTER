//
//  ContentView.swift
//  Image_tutorial
//
//  Created by yoonhyeok on 2023/01/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("imageTutorial")
                    .frame(height: 10)
                    .offset(y: -200)
              
                CircleImageView()
                
                HStack{
                    NavigationLink(destination: MyWebView(url: "https://www.naver.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("네이버로")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(20)
                    }//NavigationLink
                    NavigationLink(destination: MyWebView(url: "https://www.daum.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("다음으로")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(20)
                    }//NavigationLink
                }//HStack
                .padding(50)
            }//Vstack
        }//NavigationView

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
