//
//  SwiftAnimation.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI

struct SwiftAnimation: View {
    @State var isAnimate: Bool = false
    var body: some View {
        
        VStack{
            Button(action: {
                withAnimation{
                    isAnimate.toggle()
                }
            }, label: {
                Text("Animate")
                    .padding()
                    
            })
            Spacer()
            RoundedRectangle(cornerRadius: 10)
                .frame(
                    width: isAnimate ? 100 : 150,
                    height: isAnimate ? 100 : 150)
                .rotationEffect(Angle(degrees: isAnimate ? 360 : 0))
                .offset(y: isAnimate ? 0 : -500)
        }
      
    }
}

#Preview {
    SwiftAnimation()
}
