

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack{
            BackGroundView(isNight: isNight)
            VStack{
                
                CityName(city:"Hyderabad, TS")
                
                MainWeatherView(icon: isNight ? "moon.fill" : "cloud.sun.fill",mainTemperature: 25)
                HStack{
//                    Spacer()
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 35)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 32)
                    WeatherDayView(dayOfWeek: "WED", imageName: "wind.snow", temperature: 20)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.fill", temperature: 25)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sun.max.fill", temperature: 33)
//                    Spacer()
                    
                }
                Spacer()
                Button{
                    isNight.toggle()
                }label: {
                    ButtonText(title: "Change Day Time", 
                               textColor: isNight ? .white : .blue, backGroundColor: isNight ? .gray : .white)
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
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:40,height:40)
            Text("\(temperature)°")
                .font(.system(size: 17, weight: .medium))
                .foregroundColor(.white)
        }.padding(10)
    }
}

struct BackGroundView: View {
    var isNight : Bool
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [isNight ? .gray : .blue, isNight ? .black : .gray]),
                       startPoint: .topTrailing,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
        //Adds gradient of colors, can add any N no of colors

    }
}

struct CityName: View {
    var city: String
    var body: some View {
        Text(city)
            .font(.system(size: 32,weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(40)
    }
}

struct MainWeatherView: View {
    var icon: String
    var mainTemperature: Int
    var body: some View {
        VStack(spacing:6){
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:170,height:170)
            Text("\(mainTemperature)°")
                .font(.system(size: 70,weight:.medium,design:.default))
                .foregroundColor(.white)
        }
        .padding()
    }
}


