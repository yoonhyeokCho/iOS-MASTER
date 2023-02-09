//
//  MyBasicCard.swift
//  ToDoList
//
//  Created by yoonhyeok on 2023/02/09.
//

import SwiftUI

struct MyBasicCard: View{
    var body: some View{
        
        HStack(spacing: 20){
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text("BasicCard")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                
                Spacer().frame(height: 5)
                
                Text("basic_card")
            }
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
        
    }
}

struct MyBasicCard_Previews: PreviewProvider{
    static var previews: some View{
        MyBasicCard()
    }
}
