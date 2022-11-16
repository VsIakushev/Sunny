//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Vitaliy Sergeevich on 16.11.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation

struct CurrentWeatherData {
    let name: String
    let main: Main
    let weather: [Weather]
    
}

struct Main {
    let temp:  Double
    let feelsLike: Double
    
    //для замены написания ключа с _ на camelCase
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}

struct Weather {
    let id: Int
}
