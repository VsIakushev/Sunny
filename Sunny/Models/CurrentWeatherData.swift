//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Vitaliy Sergeevich on 16.11.2022.
//  Copyright © 2022 Vitalii Iakushev. All rights reserved.
///

import Foundation

var test = "git"

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    
}

struct Main: Codable {
    let temp:  Double
    let feelsLike: Double
    
    //для замены написания ключа с _ на camelCase
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}

struct Weather: Codable {
    let id: Int
}
