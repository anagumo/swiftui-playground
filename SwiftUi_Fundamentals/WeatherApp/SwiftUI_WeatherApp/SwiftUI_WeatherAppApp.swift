import SwiftUI

@main
struct SwiftUI_WeatherAppApp: App {
    var body: some Scene {
        WindowGroup {
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
}
