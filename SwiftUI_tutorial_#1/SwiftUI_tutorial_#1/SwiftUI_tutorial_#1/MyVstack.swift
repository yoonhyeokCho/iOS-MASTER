//
//  MyVstack.swift
//  SwiftUI_tutorial_#1
//
//  Created by yoonhyeok on 2023/01/09.
//

import SwiftUI

struct MyVstackView: View{
    var body: some View{
        VStack{
            Text("1!")
                .font(.system(size: 60))
            Text("2!")
                .font(.system(size: 60))
            Text("3!")
                .font(.system(size: 60))
        }
        .background(Color.red)
    }
}
