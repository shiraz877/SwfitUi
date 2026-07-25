//
//  SwiftFrame.swift
//  Swfitui
//
//  Created by Shiraz on 25/07/26.
//

import SwiftUI

struct SwiftFrame: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) //every one has already in a frame but we add add frame manually also
            .background(.blue)
            .frame(height: 100)
            .background(.yellow)
            .frame(minWidth: 200)
            .background(.black)
            .frame(maxWidth: .infinity) //this will spread in width upto the mobile width
            .background(.green)
            .frame(maxHeight: .infinity)
            .background(.red)
    }
}

#Preview {
    SwiftFrame()
}
