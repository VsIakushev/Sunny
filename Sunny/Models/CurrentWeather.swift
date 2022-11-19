//
//  CurrentWeather.swift
//  Sunny
//
//  Created by Vitaliy Sergeevich on 17.11.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        return String(format: "%.1f", temperature)
//        return "\(temperature.rounded())"
    }
    
    let feelsLikeTemperature: Double
    var feelsLikeTemperatureString: String {
//        return "\(feelsLikeTemperature.rounded())"
        return String(format: "%.1f", feelsLikeTemperature)
        //округление до 1 знаков после запятой. до 0 знака это %.0f итд
    }
    
    let conditionCode: Int
    var systemIconNameString: String {
        switch conditionCode {
        case 200...232: return "cloud.bolt.rain.fill"
        case 300...321: return "cloud.drizzle.fill"
        case 500...531: return "cloud.rain.fill"
        case 600...622: return "cloud.snow.fill"
        case 701...781: return "smoke.fill"
        case 800: return "sun.max.fill"
        case 801...804: return "cloud.fill"
        default: return "nosign"
        }
    }
    
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelsLikeTemperature = currentWeatherData.main.feelsLike
        conditionCode = currentWeatherData.weather.first!.id
    }
    
}
