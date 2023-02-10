//
//  MyProfileView.swift
//  ToDoList
//
//  Created by yoonhyeok on 2023/02/10.
//

import SwiftUI

struct MyProflieView : View{
    var body: some View{
        ScrollView{
            VStack{
                MyCircleImageView(imageString: "lake")
                    .padding(.vertical,20)
                Text("yoonhyeokCho")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                
                Spacer().frame(height: 20)
                
                Text("iOS 개발")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                HStack{
                    NavigationLink(destination: MyWebview(urlToLoad: "https://github.com/yoonhyeokCho")){
                        Text("Git")
                        
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .frame(width: 100, height: 20)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebview(urlToLoad: "https://www.notion.so/35512c9b0e0242f089faf8ccf60464fb?pvs=4")){
                        
                        Text("Notion")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .frame(width: 100, height: 20)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    }

                    
                }
                .padding(20)
                
                Spacer()
            }//Vstack
        } // ScrollView
        .navigationTitle("내 프로필")
        .navigationBarItems(trailing:
            NavigationLink(destination: Text("설정 화면")){
            Image(systemName: "gear")
                .font(.largeTitle)
                .foregroundColor(Color.black)
            }
        )
    }
}

struct MyProflieView_Previews: PreviewProvider{
    static var previews: some View{
        MyProflieView()
    }
}
