//
//  WeatherApp.swift
//  Weather
//
//  Created by yoonhyeok on 2023/02/28.
//

import SwiftUI

@main
struct WeatherApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(WeatherViewModel())
        }
    }
}
