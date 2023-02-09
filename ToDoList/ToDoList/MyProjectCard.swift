//
//  MyProjectCard.swift
//  ToDoList
//
//  Created by yoonhyeok on 2023/02/09.
//

import SwiftUI

struct MyProjcectCard: View{
    @State
    private var shouldShowAlert: Bool = false
    
    var body: some View{
        
        VStack(alignment: .leading,spacing: 0){
            Rectangle().frame(height: 0)
            Text("조윤혁의 swift 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom,5)
            Text("10AM - 11AM")
                .padding(.bottom, 10)
                .foregroundColor(.secondary)
            HStack{
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.orange)
                    )
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.orange)
                    )
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.orange)
                    )
                
                Spacer()
                Button(action: {
                    print("확인 버튼이 클릭 되었습니다.")
                    self.shouldShowAlert = true
                }){
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창입니다"))
                }

            }
        }
        .padding(20)
        .background(Color.yellow)
        .cornerRadius(20)
        
    }
}

struct MyProjectCard_Previews: PreviewProvider{
    static var previews: some View{
        MyProjcectCard()
    }
}
