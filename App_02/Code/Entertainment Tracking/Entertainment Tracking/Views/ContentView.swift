import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("movie_splash")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("I LOVE MOVIES")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
