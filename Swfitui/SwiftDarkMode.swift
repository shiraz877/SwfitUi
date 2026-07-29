//
//  SwiftDarkMode.swift
//  Swfitui
//
//  Created by Shiraz on 29/07/26.
//

import SwiftUI

struct SwiftDarkMode: View {
    var body: some View {
        VStack{
            Text("Hello my name is mohammad shiraz")
                .foregroundColor(.white)
            Text("How are you")
                .foregroundColor(.black)
            Text("What are you doing")
                .foregroundColor(Color("AdaptiveColor"))
        }
    }
}

#Preview {

        SwiftDarkMode()

        
}
