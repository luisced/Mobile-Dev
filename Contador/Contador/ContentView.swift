//
//  ContentView.swift
//  Contador
//
//  Created by Luis Cedillo M on 08/02/24.
//

import SwiftUI

//
//  ContentView.swift
//  Contador
//
//  Created by Luis Cedillo M on 08/02/24.
//


struct CounterView: View {
    // Paso 2: Definir una variable de estado para el contador
    @State private var counter = 0

    var body: some View {
        VStack(alignment: .center) {
            Text("The current count is:")
                .multilineTextAlignment(.leading)
                .padding(.bottom, 100.0)
            Text("\(counter)")
                .padding(.bottom,250.0)
                .fontWeight(.bold)
                .font(.system(size: 60))

                
            // Contenedor horizontal para los botones
            HStack {
                Button(action: {

                    counter = counter > 0 ? counter - 1 : 0
                    
                    
                }) {
                    Text("-")
                        .foregroundColor(.red)
                }.padding(.trailing, 170)
                // Botón de más
                Button(action: {
                    counter += 1
                }) {
                    Text("+")
                        .foregroundColor(.green)
                        .clipShape(Circle())
                    
                }.padding(.leading, 30)
            }.font(.system(size: 50))
            
            Button(action: {
                            counter = 0 // Reinicia el contador a cero
                        }) {
                                Image(systemName: "return")
                                    .resizable()
                                    
                                    .frame(width: 30.0, height: 30.0)
                                    .foregroundColor(.black)
                                    
                                
                        }.padding(.leading,150)

            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                        
                        Image("Fondo azul")
                            .resizable()
                            .scaledToFill()
                            .edgesIgnoringSafeArea(.all) //
                    )
            .edgesIgnoringSafeArea(.all)
            .font(.custom("Helvetica Neue", size: 40))
    }
}

#Preview{
    CounterView()
}




