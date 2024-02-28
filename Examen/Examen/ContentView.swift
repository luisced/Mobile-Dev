//
//  ContentView.swift
//  Examen
//
//  Created by Luis Cedillo M on 27/02/24.
//

import SwiftUI


struct ContentView: View {
    @State private var currentRoll = 1
    @State private var showingAlert = false

    var body: some View {
        ZStack {
            // Background image
            Image("background") // Replace with your actual background image name
                .resizable()
                .edgesIgnoringSafeArea(.all) // This makes the image ignore the safe area and fill the whole screen
            
            VStack {
                Spacer(minLength: 150)
                Text("Roll the Dice")
                    .font(.system(size: 42))
                    .fontWeight(.bold)
                Spacer(minLength: 150)
                Image("dice\(currentRoll)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                Spacer(minLength: 250)
                Button(action: rollDice) {
                    Text("Play Now")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("The number is:"), message: Text("\(currentRoll)"), dismissButton: .default(Text("OK")))
                }
                Spacer(minLength: 50)
            }
            .padding(.horizontal)
        }
    }


    // Function to roll the dice and show an alert
    func rollDice() {
        currentRoll = Int.random(in: 1...6)
        showingAlert = true
    }

}


#Preview {
    ContentView()
}
