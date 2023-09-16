//
//  WeatherWeekView.swift
//  SwiftUI-Weather
//
//  Created by Ömür Uçum on 16.09.2023.
//

import SwiftUI

struct WeatherWeekView: View {
    
    let weekTempData: WeatherInfoDaily
    
    var body: some View {
        VStack{
            Text(weekTempData.dayOfWeek)
                .font(.system(size:16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: weekTempData.imageName)
                .symbolRenderingMode(.multicolor)
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(weekTempData.temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct WeatherWeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherWeekView(weekTempData: WeatherInfoDaily.randomData.first!)
    }
}
