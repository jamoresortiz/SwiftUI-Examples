import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("car_mercedes")
                .resizable()
                .frame(height: 200)
            
            Image("hamilton")
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -65)
                .padding(.bottom, -55)
            
            Text("Lewis Hamilton")
                .font(.system(size: 35))
                .fontWeight(.thin)
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
