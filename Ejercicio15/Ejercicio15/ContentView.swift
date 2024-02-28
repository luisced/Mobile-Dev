//
//  ContentView.swift
//  Ejercicio15
//
//  Created by Luis Cedillo M on 15/02/24.
//

import SwiftUI

struct ImageData {
    var name: String
    var image: Image // Assuming we are using SwiftUI's Image, but can be changed to UIImage if needed
}

struct ClothingItemView: View {
    var images: [ImageData]
    @State private var currentIndex: Int = 0
    
    var body: some View {
        VStack {
            images[currentIndex].image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            HStack(alignment: .center) {
                Button(action: {
                    if currentIndex > 0 {
                        currentIndex -= 1
                    }
                }) {
                    Text("Previous")
                        .padding(.trailing, 45.0)
                    
                }
                Text(images[currentIndex].name).multilineTextAlignment(.center).padding(.horizontal, 25.0)

                Button(action: {
                    // Navigate to the next image
                    if currentIndex < images.count - 1 {
                        currentIndex += 1
                    }
                }) {
                    Text("Next").padding(.leading, 45.0)
                }
            }.padding()
        }
        .padding()
    }
}

struct ContentView: View {
    // Sample data for each clothing item
    let hatImages = [ImageData(name: "Hat 1", image: Image("head1")), ImageData(name: "Hat 2", image: Image("head2")),
                     ImageData(name: "Hat 3", image: Image("head3"))]
    let pantsImages = [ImageData(name: "Pants 1", image: Image("pants1")), ImageData(name: "Pants 2", image: Image("pants2"))]
    let shirtImages = [ImageData(name: "Shirt 1", image: Image("shirt3")), ImageData(name: "Shirt 2", image: Image("shirt2"))]

    var body: some View {
        ScrollView {
            VStack {
                ClothingItemView(images: hatImages)
                ClothingItemView(images: pantsImages)
                ClothingItemView(images: shirtImages)
            }
        }
    }
}

#Preview{
        ContentView()
}
