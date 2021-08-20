import SwiftUI

struct StatsRow: View {

    var statKey: String
    var statValue: String
    
    var body: some View {
        HStack {
            Text(statKey + ":")
                .font(.system(size: 23))
                .fontWeight(.light)
            
            Text(statValue)
                .font(.system(size: 23))
                .fontWeight(.thin)
            
            Spacer()
        }
        .padding(.leading, 40)
        .padding(.trailing, 40)
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow(statKey: "Key", statValue: "Value")
    }
}
