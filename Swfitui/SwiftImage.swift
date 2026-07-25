//
//  SwiftImage.swift
//  Swfitui
//
//  Created by Shiraz on 25/07/26.
//

import SwiftUI

struct SwiftImage: View {
    var body: some View {
        Image("img") // to get this image first we have set the image in asset folder
            .resizable() // this is for make size varaible
            .frame(width: 300, height: 200) // frame gives you a skalaton
            .clipShape(
//                Circle() this is like profile pic
//                Rectangle()
//                RoundedRectangle(cornerRadius: 20)
//                Ellipse()
                Circle()
                
            ) //this will give you shape of the image like circle
    }
}

#Preview {
    SwiftImage()
}
