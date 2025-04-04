//
//  CircleImage.swift
//  Iphone-test
//
//  Created by Diego Rafael on 4/4/25.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle()) // Clips the image into a circle
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("turtle_rock"))
}
