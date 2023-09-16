//
//  WeatherInfoDaily.swift
//  SwiftUI-Weather
//
//  Created by Ömür Uçum on 16.09.2023.
//

import Foundation

struct WeatherInfoDaily {
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
}

extension WeatherInfoDaily{
    
    static let dummyData: [WeatherInfoDaily] = [
    
        .init(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 76),
        .init(dayOfWeek: "WED", imageName: "cloud.sun.fill", temperature: 70),
        .init(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55),
        .init(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 72),
        .init(dayOfWeek: "SAT", imageName: "sun.dust.fill", temperature: 66)
    ]
}
