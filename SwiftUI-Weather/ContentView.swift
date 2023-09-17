import SwiftUI


struct ContentView: View {
    
    @State private var isNight = false
    @State private var weeklyTemp: [WeatherInfoDaily] = WeatherInfoDaily.dummyData
    
    var body: some View {
        ZStack {
            BackgroudView(isNight: isNight)
            VStack{
                
                CityTextView(cityName: "İstanbul, TR")
                
                CurrentTemperature(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                
                /*
                ScrollView(.horizontal){
                    LazyHStack(spacing: 25){

                    }
                }
                 */
                
                HStack(spacing: 20){
                     ForEach(weeklyTemp, id: \.dayOfWeek) { datum in
                         WeatherWeekView(weekTempData: datum)
                     }
                }
                
                Spacer()
                
                Button{
                    isNight.toggle()
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
                .symbolRenderingMode(.multicolor)
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
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
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
