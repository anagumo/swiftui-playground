import SwiftUI

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .gray : .blue,
                                                   isNight ? .black: .lightBlue]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea() //Ignore the limites of safe area
    }
}

struct CityTextView: View {
    
    let location: String
    
    var body: some View {
        Text(location)
            .font(.system(size: .point32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct CurrentDayView: View {
    
    @Binding var isNight: Bool
    let temperature: String
    
    var body: some View {
        VStack(spacing: .point10) {
            Image(systemName: isNight ? Constants.darkAsset : Constants.lightAsset)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .point180, height: .point180)
            
            Text(temperature)
                .font(.system(size: .point70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, .point40)
    }
}

struct WeatherDayListView: View {
    
    let weatherDays: [WeatherDay]
    
    var body: some View {
        HStack(spacing: .point20) {
            ForEach(weatherDays) { WeatherDayItem(weatherDay: $0) }
        }
    }
}

struct WeatherDayItem: View {
    
    let weatherDay: WeatherDay
    
    var body: some View {
        VStack {
            Text(weatherDay.dayOfWeek)
                .font(.system(size: .point16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: weatherDay.assetName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .point40, height: .point40)
            
            Text(weatherDay.temperature)
                .font(.system(size: .point28, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}

struct Constants {
    static let lightAsset = "cloud.sun.fill"
    static let darkAsset = "moon.stars.fill"
    static let weatherButtonText = "Change Time Of Day" // TODO: Localize the app
}
