import SwiftUI

struct PilotRow: View {
    
    var pilot: Pilot
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 16, content: {
            Image(pilot.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle().foregroundColor(pilot.team.color))
                .shadow(radius: 4)

            Text(pilot.name)
                .font(.system(size: 24))
                .fontWeight(.light)

            Spacer()
        })
        .padding([.top, .leading, .trailing], 8)
        .frame(height: 80)
    }
}

struct PilotRow_Previews: PreviewProvider {
    static var previews: some View {
        PilotRow(pilot: pilots.shuffled()[0])
            .previewLayout(.fixed(width: 450, height: 100))
    }
}
