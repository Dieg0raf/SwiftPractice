//
//  Iphone_testApp.swift
//  Iphone-test
//
//  Created by Diego Rafael on 4/3/25.
//

import SwiftUI

@main // entry point for the app
struct Iphone_testApp: App {
    @State private var modelData = ModelData() // it initializes state in an app only once during the lifetime of the app.
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData) // supply model instance to ContentView
        }
    }
}
