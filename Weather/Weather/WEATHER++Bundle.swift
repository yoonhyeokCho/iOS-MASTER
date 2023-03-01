//
//  WEATHER++Bundle.swift
//  Weather
//
//  Created by yoonhyeok on 2023/03/01.
//

import Foundation

extension Bundle{
    var apiKey: String{
        guard let file = self.path(forResource: "WeatherInfo", ofType: "plist") else {return ""}
        
        guard let resource = NSDictionary(contentsOfFile: file) else {return ""}
        guard let key = resource["API_KEY"] as? String else {fatalError("WeatherInfo.plist에 API_KEY 설정 바랍니다. ")}
        return key
    }
}
