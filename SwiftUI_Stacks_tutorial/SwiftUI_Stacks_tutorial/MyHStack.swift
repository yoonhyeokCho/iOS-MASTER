//
//  MyHStack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by yoonhyeok on 2023/01/12.
//

import SwiftUI

struct MyHStack: View{
    var body: some View{
        
        
        HStack(alignment: .bottom){
//            Divider()
//            Rectangle()
//                .frame(width:100)
//                .foregroundColor(.red)
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(.white)
                .font(.system(size: 70))
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
        }//HStack
        .padding()
        .background(Color.green)
    }
}


struct MyHStack_previews: PreviewProvider{
    static var previews: some View {
        MyHStack()
    }
}
