//
//  UserListView.swift
//  Oauth_alamofire
//
//  Created by yoonhyeok on 2023/02/20.
//

import Foundation
import SwiftUI

struct UserListView : View {
    
    @State var users : [UserData] = [UserData(id:0, name: "하이",email: "하이@email.com",avatar: "https://www.gravatar.com/avatar/b87c0cd09c8c06be1d50f18d2104c814.jpg?s=200&d=robohash"),
                                     UserData(id:1, name: "하이2",email: "하이2@email.com",avatar: "https://www.gravatar.com/avatar/b87c0cd09c8c06be1d50f18d2104c814.jpg?s=200&d=robohash"),
                                     UserData(id:2, name: "하이3",email: "하이3@email.com",avatar: "https://www.gravatar.com/avatar/b87c0cd09c8c06be1d50f18d2104c814.jpg?s=200&d=robohash")]
    var body: some View{
        List(users){ item in
            NavigationLink(destination: OtherUserProfileView(userData: item), label: {
                HStack{
                    AsyncImage(url: URL(string: item.avatar)!) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                                .frame(width: 120, height: 120, alignment: .center)
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 120, alignment: .center)
                        case .failure:
                            Image(systemName: "person.fill.questionmark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                                .frame(width: 120, height: 120, alignment: .center)
                        @unknown default:
                            EmptyView()
                                .frame(width: 120, height: 120, alignment: .center)
                        }
                    }
                    Spacer()
                    VStack(alignment:.leading){
                        Text(item.name).font(.title3)
                        Text(item.email).font(.callout)
                    }
                    Spacer()
                }
            })
        }.navigationTitle("사용자 목록")
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
