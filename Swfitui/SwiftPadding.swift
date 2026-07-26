//
//  SwiftUIView.swift
//  Swfitui
//
//  Created by Shiraz on 25/07/26.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack(alignment: .trailing) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
            Text("hello my name is mohammad shiraz how are you? The process of digging out minerals from the earth is called mining")
//                .background(.red)
//                .foregroundColor(.white)
            //            .padding() //by default all over the frame 10 padding we can change the padding by our self see below the example
            //            .padding(.horizontal,20)
//                .frame(width: 300,height: 50)
//                .background(.black)
        }
        .padding()
        .padding(.vertical,10)
        .background(
            Color.gray
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10 ,
                    x:0.0,
                    y: 10
                )
            
        )
    }
}

#Preview {
    SwiftUIView()
}
