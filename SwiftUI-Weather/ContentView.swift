import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroudView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack{
                
                CityTextView(cityName: "İstanbul, TR")
                
                CurrentTemperature(imageName: "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.fill", temperature: 70)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 72)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sun.dust.fill", temperature: 66)
                }
                Spacer()
                
                Button{
                    print("button tapped")
                } label: {
                    WeatherButton(title: "Change Day Time", bgColor: .white, textColor: .blue)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View{
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack{
            Text(dayOfWeek)
                .font(.system(size:16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}


struct BackgroudView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size:32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct CurrentTemperature: View{
    
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack(spacing: 10) {
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

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
