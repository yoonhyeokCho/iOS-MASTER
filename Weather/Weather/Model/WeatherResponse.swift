//
//  WeatherResponse.swift
//  Weather
//
//  Created by yoonhyeok on 2023/02/28.
//

import Foundation

struct WeatherResponse: Codable{
    let main: Main
}

struct Main: Codable {
    let temp, feelsLike, tempMin, tempMax: Double
    let pressure, humidity: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure, humidity
    }
}
