//
//  ContentView.swift
//  Weather
//
//  Created by yoonhyeok on 2023/02/28.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var weatherViewModel : WeatherViewModel
    
    @State var highTemp: Int = 0
    @State var lowTemp: Int = 0
    
    var body: some View {
        VStack{
            Image("korean_flag")
                .resizable()
                .frame(width: 100, height: 100)
            Text("대한민국 서울의 날씨")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding([.top],50)
            
            HStack{
                Text("최저 기온 \(self.lowTemp)")
                    .fontWeight(.bold)
                    .frame(width: 150)
                
                Text("최고 기온 \(self.highTemp)")
                    .fontWeight(.bold)
                    .frame(width: 150)
            }.padding(100)
        }
        .onAppear(perform: {
            print("onAppear() called")
            weatherViewModel.getWeather()
        })
        .onReceive(weatherViewModel.$weatherInfo, perform: { temp in
            print("onReceive() called")

            guard let weather = temp else {return}

            self.highTemp = Int((weather.tempMax) - 273.15)
            self.lowTemp = Int((weather.tempMin) - 273.15 )
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

