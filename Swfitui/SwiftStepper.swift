//
//  SwiftStepper.swift
//  Swfitui
//
//  Created by Shiraz on 29/07/26.
//

import SwiftUI

struct SwiftStepper: View {
    @State var cnt: Int = 0
    var body: some View {
      Stepper("Stepper:\(cnt)",value: $cnt)
    }
}

#Preview {
    SwiftStepper()
}
