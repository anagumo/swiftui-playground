import Foundation

struct WeatherDay: Identifiable {
    let dayOfWeek : String
    let temperature: String
    let assetName: String
    var id: String { dayOfWeek }
    
    init(dayOfWeek: String = .empty,
         temperature: String = .empty,
         assetName: String = .empty) {
        self.dayOfWeek = dayOfWeek
        self.temperature = temperature
        self.assetName = assetName
    }
}

struct Weather {
    let location: String
    let currentDay: WeatherDay
    let weatherDays: [WeatherDay]
    
    init(location: String = .empty,
         currentDay: WeatherDay = WeatherDay(),
         weatherDays: [WeatherDay] = []) {
        self.location = location
        self.currentDay = currentDay
        self.weatherDays = weatherDays
    }
}
