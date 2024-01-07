//
//  ContentView.swift
//  Weather
//
//  Created by Nitin Chowdary on 03/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color("GreeishBlue")]),
                           startPoint: .topTrailing,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //Adds gradient of colors, can add any N no of colors
            VStack{
                
                Text("Hyderabad, TS")
                    .font(.system(size: 32,weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(40)
                
                VStack(spacing:6){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:170,height:170)
                    Text("25°")
                        .font(.system(size: 70,weight:.medium,design:.default))
                        .foregroundColor(.white)
                }
                .padding()
                HStack{
//                    Spacer()
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 35)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 25)
                    WeatherDayView(dayOfWeek: "WED", imageName: "wind.snow", temperature: 20)
                    WeatherDayView(dayOfWeek: "THU", imageName: "sunset.fill", temperature: 32)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "snow", temperature: 33)
//                    Spacer()
                    
                }
                Spacer()
                Button{
                    print("Tapped")
                }label: {
                    Text("Change Day Time")
                        .frame(width:280,height:50)
                        .background(Color.white)
                        .font(.system(size: 20,weight: .bold,design: .default))
                        .cornerRadius(14)
                }
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 17,weight:.medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:40,height:40)
            Text("\(temperature)°")
                .font(.system(size: 17, weight: .medium))
                .foregroundColor(.white)
        }.padding(10)
    }
}
