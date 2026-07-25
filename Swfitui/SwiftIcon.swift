//
//  SwiftIcon.swift
//  Swfitui
//
//  Created by Shiraz on 25/07/26.
//

import SwiftUI

struct SwiftIcon: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable() //this will increase the size of icon on the basis of frame
            .foregroundColor(
                .green
            )
//        aspectRatio(contentMode: .fit)
//            .font(.title) //this is the system size
//            .font(.system(size: 300)) this the manual way to scale the size of icon
            .frame(width: 300, height: 300)
        
        Image(systemName: "circle")
        
    }
}

#Preview {
    SwiftIcon()
}
