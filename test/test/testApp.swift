//
//  testApp.swift
//  test
//
//  Created by Luis Cedillo M on 30/01/24.
//

import SwiftUI

@main
struct testApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: testDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
