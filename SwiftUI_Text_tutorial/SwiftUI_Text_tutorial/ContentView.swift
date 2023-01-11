//
//  ContentView.swift
//  SwiftUI_Text_tutorial
//
//  Created by yoonhyeok on 2023/01/11.
//

import SwiftUI

struct ContentView: View {
    
    //날짜 format 커스텀
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYY년 M월 d일"
        return formatter
    }()
    
    var today = Date()
    
    var trueOrFalse: Bool = false
    
    var number: Int = 123
    
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typessetting industry. Lorem Ipsum is simply dummy text of the printing and typessetting industry. ")
                .tracking(2)     //text 바로 아래 추가 해야함 글자와 글자 사이 간격
                .font(.system(.body, design:.rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)  // trailing -> R, leading ->L
                .lineLimit(nil)    //nil -> 멀티라인
                .lineSpacing(10) //글자 사이 간격
                .truncationMode(.middle)    //짤리는 글자(...) 어디서 끊을지 설정
                .shadow(color: Color.red, radius: 1.5, x: 0, y: 10)
                .padding(.all,20)
                .background(Color.yellow)
                .cornerRadius(20)
                .padding()
                .background(Color.green)
                .cornerRadius(20)
                .padding()
            
            
            Text("안녕하세요 !!")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘 날짜 : \(today,formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            
            Text("숫자 : \(number)")
        }//VStack

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
