import SwiftUI

struct RoundedButtonView: View {
    
    let title: String
    let titleColor: Color
    let backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: .point280, height: .point50)
            .background(backgroundColor)
            .foregroundColor(titleColor)
            .font(.system(size: .point20, weight: .bold, design: .default))
            .cornerRadius(.point10)
    }
}
