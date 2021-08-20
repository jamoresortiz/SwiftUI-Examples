import SwiftUI

struct PilotDetail: View {

    var pilot: Pilot
    
    var body: some View {
        VStack {
            Image(pilot.team.imageName)
                .scaledToFill()
                .frame(height: 220)
            
            Image(pilot.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(pilot.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -70)
                .padding(.bottom, -60)
            
            Text(pilot.name)
                .font(.system(size: 39))
                .fontWeight(.light)
                .padding(.bottom, 24)

            StatsRow(statKey: "Age", statValue: String(pilot.age))

            StatsRow(statKey: "Number", statValue: String(pilot.number))

            StatsRow(statKey: "Birth place", statValue: pilot.birthPlace)
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct PilotDetail_Previews: PreviewProvider {
    static var previews: some View {
        PilotDetail(pilot: pilots.shuffled()[0])
    }
}
