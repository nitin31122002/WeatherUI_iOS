

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackGroundView(topColor: .blue, bottomColor: .gray)
            VStack{
                
                CityName(city:"Hyderabad, TS")
                
                MainWeatherView(icon: "cloud.sun.fill",mainTemperature: 25)
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
                    ButtonText(title: "Change Day Time", textColor: .blue, backGroundColor: .white)
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

struct BackGroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topTrailing,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
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


