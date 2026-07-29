//
//  SwiftSlider.swift
//  Swfitui
//
//  Created by Shiraz on 29/07/26.
//

import SwiftUI

struct SwiftSlider: View {
    @State var slider: Double = 0.0
    var body: some View {
        
        VStack {
            Text("Rating :")
//            String("%2f",$slider)
//            Slider(value: $slider)
            Slider(value: $slider, in: 1...10)
        }
    }
}

#Preview {
    SwiftSlider()
}
