//
//  ContentView.swift
//  Iphone-test
//
//  Created by Diego Rafael on 4/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
