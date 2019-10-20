//
//  ContentView.swift
//  01-MyFirstApp
//
//  Created by Jorge Amores Ortiz on 12/10/2019.
//  Copyright © 2019 Jorge Amores Ortiz. All rights reserved.
//

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
                .offset(x: 0, y: -55)
            
            Text("Lewis Hamilton")
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
