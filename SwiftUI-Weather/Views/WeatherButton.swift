//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Ömür Uçum on 16.09.2023.
//

import SwiftUI

struct WeatherButton: View{
    
    var title: String
    var bgColor: Color
    var textColor: Color
    
    var body: some View{
        Text(title)
            .frame(width: 280, height:50)
            .background(bgColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(5.0)
    }
}
