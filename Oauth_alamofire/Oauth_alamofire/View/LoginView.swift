//
//  LoginView.swift
//  Oauth_alamofire
//
//  Created by yoonhyeok on 2023/02/20.
//

import Foundation
import SwiftUI

struct LoginView : View {
    @State var emailInput : String = ""
    @State var passWordInput : String = ""
    var body: some View{
        VStack{
            Form{
                Section(header: Text("로그인"), content: {
                    TextField("이메일 : ",text: $emailInput)
                    SecureField("비밀번호 : ",text: $passWordInput)
                })
                Section{
                    Button(action: {
                        print("로그인 버튼 클릭")
                    },label: {
                        Text("로그인 하기")
                    })
                }
            }
        }.navigationTitle("로그인 하기")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
