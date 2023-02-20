//
//  ApiClient.swift
//  Oauth_alamofire
//
//  Created by yoonhyeok on 2023/02/20.
//

import Foundation
import Alamofire

// api 호출 클라이언트
final class ApiClient{
    static let shared = ApiClient()
    
    static let Base_URL = ""
    
    let intercepotrs = Interceptor(interceptors: [
        BaseInterceptor()
    ])
    
    let monitors = [ApiLogger()] as [EventMonitor]
    
    var session: Session
    
    init(){
        print("ApiClient - init() called")
        session = Session(interceptor: intercepotrs,eventMonitors: monitors)
    }
}
