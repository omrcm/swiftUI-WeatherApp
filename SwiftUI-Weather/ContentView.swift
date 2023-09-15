import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                    gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("İstanbul, TR")
                    .font(.system(size:32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 20){
                    VStack{
                        Text("TUE")
                            .font(.system(size:16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("76°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("WED")
                            .font(.system(size:16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("70°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("THU")
                            .font(.system(size:16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "wind.snow")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("55°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("FRI")
                            .font(.system(size:16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "sunset.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("72°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("SAT")
                            .font(.system(size:16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "sun.dust.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("66°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                
                Button{
                    print("button tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height:50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(3.0)
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
