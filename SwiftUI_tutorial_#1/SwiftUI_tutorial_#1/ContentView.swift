//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by yoonhyeok on 2023/01/09.
//

import SwiftUI

struct ContentView: View {
    
    // @State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    var body: some View {

        NavigationView{
            VStack{
                HStack{
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()
                }//Hstack
                .padding(isActivated ? 50.0 : 10.0)
                
                .background(isActivated ? Color.yellow : Color.black)
                //탭 재스쳐 추가
                .onTapGesture {
                    print("HStack 이 클릭되었습니다.")
                    //애니며이션과 함꼐
                    withAnimation{
                        // toggle() true 이면 false로 false 이면 true
                        self.isActivated.toggle()
                    }

                } //Hastack
                
                //네비에기션 버튼(링크)
                NavigationLink(destination: MyTextView()){
                    Text("네비게이션")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.yellow)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }.padding(.top,50)
            }
        }//NavigationView

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
