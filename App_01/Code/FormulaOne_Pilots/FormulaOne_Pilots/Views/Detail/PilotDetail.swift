import SwiftUI

struct PilotDetail: View {

    var pilot: Pilot
    
    var body: some View {
        VStack {
            Image(pilot.team.imageName)
                .resizable()
                .frame(height: 220)
            
            Image(pilot.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle().foregroundColor(pilot.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -60)
                .padding(.bottom, -55)
                .frame(height: 150)
            
            
            Text(pilot.name)
                .font(.system(size: 39))
                .fontWeight(.light)
                .padding([.leading, .bottom, .trailing], 24.0)
                .minimumScaleFactor(0.5)

            StatsRow(statKey: "Age", statValue: String(pilot.age))

            StatsRow(statKey: "Number", statValue: String(pilot.number))

            StatsRow(statKey: "Birth place", statValue: pilot.birthPlace)
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct PilotDetail_Previews: PreviewProvider {
    static var previews: some View {
        PilotDetail(pilot: pilots[0])
            .previewDevice("iPhone 8")
            .previewDisplayName("iPhone 8")
        
        PilotDetail(pilot: pilots[0])
            .previewDevice("iPhone 12")
            .previewDisplayName("iPhone 12")
        
        PilotDetail(pilot: pilots[0])
            .previewDevice("iPhone 12 Pro Max")
            .previewDisplayName("iPhone 12 Pro Max")
    }
}
