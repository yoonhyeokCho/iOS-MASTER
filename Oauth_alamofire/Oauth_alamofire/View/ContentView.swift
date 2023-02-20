//
//  ContentView.swift
//  Oauth_alamofire
//
//  Created by yoonhyeok on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                Image(systemName: "lock.shield.fill")
                    .font(.system(size: 160))
                Spacer()
                NavigationLink(destination: LoginView(), label: {
                    HStack{
                        Spacer()
                        Text("로그인")
                        Spacer()
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                .padding([.bottom],10)
                NavigationLink(destination: RegisterView(), label: {
                    HStack{
                        Spacer()
                        Text("회원가입")
                        Spacer()
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                Spacer().frame(height: 40)
                .padding([.bottom],10)
                NavigationLink(destination: ProfileView(), label: {
                    HStack{
                        Spacer()
                        Text("내 프로필 보기")
                        Spacer()
                    }
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                .padding([.bottom],10)
                NavigationLink(destination: UserListView(), label: {
                    HStack{
                        Spacer()
                        Text("사용자 목록 보러 가기")
                        Spacer()
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }).padding([.bottom],20)
            }//Vstack
            .padding()
        }//Navi

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
