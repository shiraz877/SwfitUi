//
//  SwiftButton.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI

struct SwiftButton: View {
    @State var title: String = "button"
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.semibold)
            .padding()
            
        Button("Button1") {
            self.title = "This is 1 button"
        }
        
        Button(action: {
            self.title = "This is button 2"
        }, label: {
            Text("Button2")
                .font(.title3)
                .foregroundColor(.white)
                .padding()
                .background(
                    Color.blue
                        
                )
                .cornerRadius(20)
                .shadow(radius: 10)
        })
        
        Button(action: {
            self.title = "This is button 3"
        }, label: {
            Text("Button3")
                .font(.title3)
                .foregroundColor(.gray)
                .padding()
                .background(
                    Capsule()
                        .stroke(Color.gray,lineWidth: 2.0)
                    
                       
                )
        })
        
        Button(action: {
            self.title = "This is button 4"
        }, label: {
            Circle()
                .foregroundColor(.white)
                .frame(width: 80,height: 80)
                .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                )
                .shadow(radius: 10)
        })
    }
}

#Preview {
    SwiftButton()
}
