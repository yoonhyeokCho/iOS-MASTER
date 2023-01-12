//
//  MyZStack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by yoonhyeok on 2023/01/12.
//

import SwiftUI

struct MyZStack : View{
    var body: some View{
        ZStack{ //아래 쪽으로 갈수록 덮어 쓰는 것
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.blue)
                .zIndex(2)
                .offset(y:-25)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
                .zIndex(1)
            
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(Color.yellow)
                .zIndex(0) //Default 0
        }
        
    }
}

struct MyZStack_previews: PreviewProvider{
    static var previews: some View {
        MyZStack()
    }
}
