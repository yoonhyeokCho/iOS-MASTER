//
//  ProfileView.swift
//  Oauth_alamofire
//
//  Created by yoonhyeok on 2023/02/20.
//

import Foundation
import SwiftUI

//"https://www.gravatar.com/avatar/b87c0cd09c8c06be1d50f18d2104c814.jpg?s=200&d=robohash"

struct ProfileView : View {
    @State var id: String = ""
      @State var name: String = ""
      @State var email: String = ""
      @State var avatarImg: String = ""
      
      var body: some View {
          VStack(alignment: .center){
              Form{
                  Section{
                      HStack{
                          Spacer()
                          if !avatarImg.isEmpty {
                              AsyncImage(url: URL(string: avatarImg)!) { phase in
                                  switch phase {
                                  case .empty:
                                      ProgressView()
                                          .frame(width: 250, height: 250, alignment: .center)
                                  case .success(let image):
                                      image
                                          .resizable()
                                          .aspectRatio(contentMode: .fit)
                                          .frame(width: 250, height: 250, alignment: .center)
                                  case .failure:
                                      Image(systemName: "person.fill.questionmark")
                                          .resizable()
                                          .aspectRatio(contentMode: .fit)
                                          .padding()
                                          .frame(width: 250, height: 250, alignment: .center)
                                  @unknown default:
                                      EmptyView()
                                          .frame(width: 250, height: 250, alignment: .center)
                                  }
                              }
                          } else {
                              Image(systemName: "person.fill.questionmark")
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                                  .padding()
                                  .frame(width: 250, height: 250, alignment: .center)
                          }
                          Spacer()
                      }//HStack
                  }
                  Section{
                      Text("아이디: \(id)")
                      Text("이름: \(name)")
                      Text("이메일: \(email)")
                  }
                  Section{
                      Button {
                          print("새로고침 버튼 클릭")
                      } label: {
                          Text("새로고침")
                      }

                  }
              } //Form
        }.navigationTitle("로그인 하기")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
