//
//  ContentView.swift
//  test
//
//  Created by Luis Cedillo M on 30/01/24.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: testDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(testDocument()))
}
