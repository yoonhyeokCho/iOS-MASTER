//
//  ContentView.swift
//  ToDoList
//
//  Created by yoonhyeok on 2023/02/09.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden : Bool = false
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .bottomTrailing){
                
                VStack(alignment: .leading,spacing: 0){
                    HStack{
                        
                        NavigationLink(destination: MyList(isNaviagtionbarHidden: self.$isNavigationBarHidden)){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        Spacer()
                        
                        NavigationLink(destination: MyProflieView()){
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                    }.padding(20)
                    
                    Text("tutorial")
                        .font(.system(size: 30))
                        .fontWeight(.black)
                        .padding(.horizontal,20)
                    
                    ScrollView{
                        VStack{
                            MyProjcectCard()
                            MyBasicCard()
                            MyCard(icon: "tray.fill", title: "정리하기", start: "10 AM", end: "11 AM", bgColor: Color.brown)
                            MyCard(icon: "play.rectangle.fill", title: "넷플릭스 보기", start: "11 AM", end: "13 PM", bgColor: Color.red)
                            MyCard(icon: "book.fill", title: "공부하기", start: "13 PM", end: "18 PM", bgColor: Color.pink)
                            MyCard(icon: "person.3.fill", title: "놀기", start: "18 PM", end: "20 PM", bgColor: Color.blue)
                            MyCard(icon: "desktopcomputer", title: "코딩", start: "20 PM", end: "23 PM", bgColor: Color.green)
                        }
                        .padding()
                        
                    }
                }//VStack
                
                Circle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(15)
                    .shadow(radius: 20)
            }//ZStack
            
            .navigationTitle("홈")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
        }//NavigationView
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
