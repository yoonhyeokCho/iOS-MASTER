//
//  MyVstack.swift
//  SwiftUI_tutorial_#1
//
//  Created by yoonhyeok on 2023/01/09.
//

import SwiftUI

struct MyVstackView: View{
    //데이터를 연동시킨다
    @Binding
    var isActivated: Bool
    
    //생성자
    init(isActivated: Binding<Bool> =
        .constant(false)){
            _isActivated = isActivated
        }
    var body: some View{
        VStack{
            Text("1!")
                .font(.system(size: 60))
            Text("2!")
                .font(.system(size: 60))
            Text("3!")
                .font(.system(size: 60))
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}
