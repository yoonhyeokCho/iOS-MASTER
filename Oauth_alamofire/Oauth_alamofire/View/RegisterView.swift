//
//  RegisterView.swift
//  Oauth_alamofire
//
//  Created by yoonhyeok on 2023/02/20.
//

import Foundation
import SwiftUI

struct RegisterView : View {
    @State var nameInput : String = ""
    @State var emailInput : String = ""
    @State var passWordInput : String = ""
    var body: some View{
        VStack{
            Form{
                Section(header: Text("이름"), content: {
                    TextField("이름을 입력해 주세요 : ",text: $nameInput)
                })
                Section(header: Text("이메일"), content: {
                    TextField("이메일을 입력해 주세요 : ",text: $emailInput)
                })
                Section(header: Text("비밀번호"), content: {
                    SecureField("비밀번호를 입력해 주세요 : ",text: $passWordInput)
                })
                Section{
                    Button(action: {
                        print("회원가입 버튼 클릭")
                    },label: {
                        Text("회원가입 하기")
                    })
                }
            }
        }.navigationTitle("로그인 하기")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
