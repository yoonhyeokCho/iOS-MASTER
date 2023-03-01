//
//  WeatherViewModel.swift
//  Weather
//
//  Created by yoonhyeok on 2023/02/28.
//

import Foundation
import Alamofire
import Combine

class WeatherViewModel: ObservableObject{
    
    var subscription = Set<AnyCancellable>()
    @Published var weatherInfo:Main?
    
    func getWeather(){
        print("getWeatherCall")
        WeatherApiService.getWeather()
            .sink{ (completion: Subscribers.Completion<AFError>) in
                print("WatherViewModel: getWeather completion: \(completion)")
            } receiveValue: { (weathers: Main) in
                print("WatherViewModel: getWeather success \(weathers)")
                self.weatherInfo = weathers
            }.store(in: &subscription)
    }
}
