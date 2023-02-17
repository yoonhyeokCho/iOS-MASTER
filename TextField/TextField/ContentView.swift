//
//  ContentView.swift
//  TextField
//
//  Created by yoonhyeok on 2023/02/17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 10){
            
            HStack{
                TextField("사용자 이름", text: $username)
                    .autocapitalization(.none)  // 작성하는 텍스트를 대문자로 바꿔주는 속성
                    .disableAutocorrection(true)  //글자 자동 수정 속성 true -> 자동 수정 x
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    self.username = ""
                }){
                    if(self.username.count > 0) {
                        Image(systemName: "multiply.circle.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.secondary)
                    }
                }
            } //HStack
            
            HStack{
                SecureField("비밀번호", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    self.password = ""
                }){
                    if(self.password.count > 0){
                        Image(systemName: "multiply.circle.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.secondary)
                    }
                    
                }
            }
            Text("입력한 비밀번호 : \(password)")
        }.padding(.horizontal, 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
