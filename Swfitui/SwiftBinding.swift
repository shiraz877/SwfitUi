//
//  Swiftbinding.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI
//Binding is used when we want to chnage something in parent view from the child view then we use binding
struct SwiftBinding: View {
    @State var bg: Color = .yellow
    @State var title: String = "Title"
    var body: some View {
        ZStack{
            bg
                .ignoresSafeArea()
            
            VStack{
                MyItem(bg: $bg, title: $title)
            }
        }
    }
}

struct MyItem : View {
    @Binding var bg: Color
    @Binding var title: String
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
        Button(action: {
            bg = .pink
            title = "hello"
        }, label: {
            Text("Button")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .background(
                    Color.blue
                    
                )
                .cornerRadius(10)
        })

    }
}
#Preview {
    SwiftBinding()
}
