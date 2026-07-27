//
//  SwiftSheet.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI

struct SwiftSheet: View {
    @State var isPresented: Bool = false
    var body: some View {
        VStack{
            Text("Hello")
            Button(action: {
                isPresented.toggle()
            }, label: {
                Text("Button")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                    .background(
                        Capsule()
                            .stroke(Color.black,lineWidth: 2.0)
                    )
                    .shadow(radius: 10)
            })
        }
        .sheet(isPresented: $isPresented , content: {
            MyItem2()
        })
    }
}

struct MyItem2: View {
    @Environment(\.presentationMode) var mode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red.ignoresSafeArea()
            
        Button(action: {
            mode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .foregroundColor(.white)
                .font(.title)
                .padding(20)
                
            
        })
        }
        
    }
}

#Preview {
    SwiftSheet()
//    MyItem2()
}
