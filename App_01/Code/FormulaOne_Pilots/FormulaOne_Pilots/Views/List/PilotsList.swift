  import SwiftUI

struct PilotsList: View {
    var body: some View {
        NavigationView {
            List(pilots) { pilot in
                NavigationLink(destination: PilotDetail(pilot: pilot)) {
                    PilotRow(pilot: pilot)
                }
            }
            .navigationBarTitle(Text("F1 Pilots"), displayMode: .large)
        }
    }
}

struct PilotsList_Previews: PreviewProvider {
    static var previews: some View {
        PilotsList()
    }
}
