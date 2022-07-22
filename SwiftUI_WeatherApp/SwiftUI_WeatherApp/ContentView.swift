import SwiftUI

struct ContentView: View {
    
    let weather: Weather
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                CityTextView(location: weather.location)
                
                CurrentDayView(isNight: $isNight,
                               temperature: weather.currentDay.temperature)
                
                WeatherDayListView(weatherDays: weather.weatherDays)
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    RoundedButtonView(title: Constants.weatherButtonText,
                                      titleColor: .blue,
                                      backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let weather = Weather(location: "Cupertino, CA",
                              currentDay: WeatherDay(dayOfWeek: "MON",
                                                     temperature: "76º",
                                                     assetName: "cloud.sun.fill"),
                              weatherDays: [
                                WeatherDay(dayOfWeek: "TUE",
                                           temperature: "74º",
                                           assetName: "cloud.sun.fill"),
                                WeatherDay(dayOfWeek: "WED",
                                           temperature: "70º",
                                           assetName: "sun.max.fill"),
                                WeatherDay(dayOfWeek: "THU",
                                           temperature: "66º",
                                           assetName: "wind"),
                                WeatherDay(dayOfWeek: "FRI",
                                           temperature: "60º",
                                           assetName: "sunset.fill"),
                                WeatherDay(dayOfWeek: "SAT",
                                           temperature: "55º",
                                           assetName: "moon.stars.fill") ])
        ContentView(weather: weather)
    }
}
