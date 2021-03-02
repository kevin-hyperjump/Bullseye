//
//  Shapes.swift
//  Bullseye
//
//  Created by Kevin Hermawan on 02/03/21.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 200.0, height: 100.0)
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
