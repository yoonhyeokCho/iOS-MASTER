//
//  ApiClient.swift
//  Weather
//
//  Created by yoonhyeok on 2023/02/28.
//

import Foundation
import Alamofire

// api 호출 클라이언트
final class ApiClient{
    static let shared = ApiClient()
    static let Base_URL = "https://api.openweathermap.org/data/2.5/"
    
    var session: Session

    init(){
        print("ApiClient - init() called")
        session = Session()
    }
}


