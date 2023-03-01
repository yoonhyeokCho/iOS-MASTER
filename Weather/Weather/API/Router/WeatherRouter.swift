//
//  WeatherRouter.swift
//  Weather
//
//  Created by yoonhyeok on 2023/02/28.
//

import Foundation
import Alamofire

enum WeatherRouter: URLRequestConvertible {
    
    case getCurrentWeather
    
    var baseURL: URL{
        return URL(string: ApiClient.Base_URL)!
    }
    var endPoint: String{
        return "weather"
    }
    
    var method: HTTPMethod{
        return .get
    }
    
    func asURLRequest() throws -> URLRequest {
        let appid = Bundle.main.apiKey
        let url = baseURL.appendingPathComponent(endPoint)
        
        var components = URLComponents(string: "\(url)")!
        let cityName = URLQueryItem(name:"q" , value: "Seoul")
        let appKey = URLQueryItem(name:"appid", value: "\(appid)")
        components.queryItems=[cityName,appKey]
     
        print("\(components.url!)")
        request.method = method
        
        return request
    }
}
