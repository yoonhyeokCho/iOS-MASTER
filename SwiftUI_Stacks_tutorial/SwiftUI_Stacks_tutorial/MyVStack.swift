//
//  MyVStack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by yoonhyeok on 2023/01/12.
//

import SwiftUI

struct MyVStack : View {
    var body: some View{
        VStack(alignment: .trailing, spacing: 0){
//            Spacer()
            
            // VStack의 alignment 로 모두 적용시키는 방법 1
//            Rectangle()
//                .frame(height: 1)
            
            //방법 2
            Divider()   //VStack 의 alignment로 모두 적용
                .opacity(0)
            
            //방법 3 각 요소에 padding 추가
            Text("글자")
                .font(.system(size: 30))
                .fontWeight(.heavy)
            
            Rectangle()
                .frame(width:100, height: 100)
                .foregroundColor(Color.orange)
            
            Spacer()
                .frame(height: 50)
            
            Rectangle()
                .frame(width:100, height: 100)
                .foregroundColor(Color.red)
            
            Rectangle()
                .frame(width:100, height: 100)
                .foregroundColor(Color.blue)
            
//            Spacer()
//            Spacer()
//            Spacer()
        }//VStack
        .frame(width: 300)
        .background(Color.green)
    }
}

struct MyVStack_previews: PreviewProvider{
    static var previews: some View {
        MyVStack()
    }
}
