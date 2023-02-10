//
//  MyList.swift
//  ToDoList
//
//  Created by yoonhyeok on 2023/02/10.
//
import SwiftUI

struct MyList: View{
    
    @Binding
    var isNavigationBarHidden : Bool
    
    init(isNaviagtionbarHidden: Binding<Bool> = .constant(false)){
        
        _isNavigationBarHidden = isNaviagtionbarHidden
    }
    
    var body: some View{
        
        List{
            Section(
                header: Text("오늘 할 일")
                    .font(.headline)
                    .foregroundColor(Color.black)
                ,footer: Text("footer")
            ){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.green)
                        .listRowSeparator(.hidden)
                }
            }.listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(
                header: Text("내일 할 일")
                    .font(.headline)
                    .foregroundColor(Color.black)
            ){
                ForEach(1...20, id: \.self){ itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.blue)
                }
            }.listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                .listRowBackground(Color.yellow)
            
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("내 목록")
        .onAppear{
            self.isNavigationBarHidden = false
        }
    }// NavigationView
}

struct MyList_Previews: PreviewProvider{
    static var previews: some View{
        MyList()
    }
}
