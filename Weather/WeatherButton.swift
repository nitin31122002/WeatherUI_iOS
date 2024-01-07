//
//  WeatherButton.swift
//  Weather
//
//  Created by Nitin Chowdary on 07/01/24.
//

import SwiftUI

struct ButtonText: View {
    var title: String
    var textColor: Color
    var backGroundColor: Color
    var body: some View {
        Text(title)
            .frame(width:280,height:50)
            .foregroundColor(textColor)
            .background(backGroundColor)
            .font(.system(size: 20,weight: .bold,design: .default))
            .cornerRadius(14)
    }
}
