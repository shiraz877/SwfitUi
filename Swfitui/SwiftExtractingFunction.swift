//
//  SwiftExtractingFunction.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI

struct SwiftExtractingFunction: View {
    @State var bg : Color = .yellow
    var body: some View {
        ZStack{
            bg
                .ignoresSafeArea()
            
            content
           
        }
    }
    var content : some View {
        VStack{
            Text("hello world")
                .font(.title)
                .fontWeight(.bold)
            Button(action: {
               changeBg()
            }, label: {
                Text("Change")
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding()
                    .background(
                        Capsule()
                            .fill(.blue)
                            .stroke(Color.gray,lineWidth: 2.0)
                    )
            })
        }
    }
    
    func changeBg(){
        bg = .pink
    }
}

#Preview {
    SwiftExtractingFunction()
}
