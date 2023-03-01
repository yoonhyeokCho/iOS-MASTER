//
//  WeatherApiService.swift
//  Weather
//
//  Created by yoonhyeok on 2023/02/28.
//

import Foundation
import Alamofire
import Combine

enum WeatherApiService{
    
    static func getWeather() -> AnyPublisher<Main,AFError>{
        print("WeatherApiService")
        return ApiClient.shared.session
            .request(WeatherRouter.getCurrentWeather)
            .publishDecodable(type: WeatherResponse.self)
            .value()
            .map{ $0.main}.eraseToAnyPublisher()
    }
}
