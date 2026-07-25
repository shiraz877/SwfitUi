//
//  SwiftBackgroundAndOverlay.swift
//  Swfitui
//
//  Created by Shiraz on 25/07/26.
//

import SwiftUI

struct SwiftBackgroundAndOverlay: View {
    var body: some View {
        Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(
        //                .red
        //                LinearGradient(gradient: Gradient(colors: [.orange, .white,. green]), startPoint: .topLeading, endPoint: .bottomLeading)
                        Circle()
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [.orange,.white,.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .frame(width: 200,height: 200)
        
                    )
                    .background(
                        Circle()
                            .fill(.blue)
                            .frame(width: 220,height: 220)
                    )
        Spacer()
        Circle()
            .fill(
                LinearGradient(gradient: Gradient(colors: [.orange,.white,.green]), startPoint: .top, endPoint: .bottomTrailing)
            )
            .overlay(
                Text("1")
                    .font(.title)
                    .foregroundColor(.red)
            )
            .frame(width: 200,height: 200)
            .background(
                Circle()
                    .fill(.blue)
                    .frame(width: 220,height: 220)
                    
            )
        Spacer()
         
        Rectangle()
            .frame(width: 100, height:  100)
        
        
            .overlay(
                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height: 50),
                alignment: .topLeading
                    
            )
            .background(
                Rectangle()
                    .fill(.orange)
                    .frame(width: 150,height: 150)
                ,alignment: .bottomTrailing
            )
        Spacer()
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.purple.opacity(0.5), .purple]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100,height: 100)
                    .shadow(color: .purple, radius: 10, x: 0 , y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35,height: 35)
                            .overlay(
                                Text("6")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                        ,alignment: .bottomTrailing
                    )
                
            )
            .frame(width: 50, height: 50)
    }
}

#Preview {
    SwiftBackgroundAndOverlay()
}
