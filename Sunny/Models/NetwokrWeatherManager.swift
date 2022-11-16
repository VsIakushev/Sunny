//
//  NetwokrWeatherManager.swift
//  Sunny
//
//  Created by Vitaliy Sergeevich on 16.11.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation

struct NetwokrWeatherManager {
    func fetchCurrentWeather(forCity city: String) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)"
        guard let url = URL(string: urlString) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data { // ответ сервера приходит в JSON формате. он хранится в data
                
                
//                let dataString = String(data: data, encoding: .utf8)
//                print(dataString!)
            }
        }
        task.resume() 
    }
    
}
