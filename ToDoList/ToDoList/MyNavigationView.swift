//
//  MyNavigationView.swift
//  ToDoList
//
//  Created by yoonhyeok on 2023/02/10.
//

import SwiftUI

struct MyNavigationView : View {
    var body: some View{
        
        NavigationView{
            MyList()
            
                .navigationBarTitle("호호")
                .navigationBarItems(
                    leading: Button(action:{
                        print("Button Click")
                    }){
                        Text("호호")
                    }
                    , trailing: NavigationLink(destination: Text("넘어온 화면"))
                    {
                        Image(systemName: "bookmark.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                    })
        }
    }
}

struct MyNavigationView_Preview: PreviewProvider{
    static var previews: some View{
        MyNavigationView()
    }
}
