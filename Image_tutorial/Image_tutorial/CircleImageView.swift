//
//  CircleImageView.swift
//  Image_tutorial
//
//  Created by yoonhyeok on 2023/01/11.
//

import SwiftUI

struct CircleImageView : View{
    var body: some View{
        
        //sf symbols 설치 후 사용
        //        Image(systemName: "flame.fill")
        //            .font(.system(size: 200))
        //            .foregroundColor(.yellow)
        //            .shadow(color: .gray, radius: 2, x: 0, y: 10)
        
        Image("imageTutorial")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle()) //원으로 자르기
            .shadow(color: .gray, radius: 2, x: 0, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.4)
            )
        
            .overlay(
                Circle()
                    .stroke(Color.red, lineWidth: 10)
                    .padding()
            )
        
            .overlay(
                Circle()
                    .stroke(Color.yellow, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Circle()
                    .stroke(Color.blue, lineWidth: 10)
            )
        
            .overlay(
                Text("day3").foregroundColor(.white)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
            )

        
        //            .clipped()     //fram 만큼 자르기
        //                    .padding())
        //            .aspectRatio(contentMode: .fill)    // fill, fit
        //            .frame(width:200, height: 200)
        
        //            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Previews:
    PreviewProvider{
    static var previews: some View{
        CircleImageView()
    }
}
