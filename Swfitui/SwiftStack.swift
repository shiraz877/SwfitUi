//
//  SwiftStack.swift
//  Swfitui
//
//  Created by Shiraz on 25/07/26.
//

import SwiftUI

struct SwiftStack: View {
    var body: some View {
        //VStack -> vertical stack
        //HStack -> horizontal stack
        //ZStack -> back to the screen
        ZStack{
            Color(.gray)
                .ignoresSafeArea()
            VStack{
                
                
                VStack(alignment: .center){
                    Rectangle()
                        .fill(.orange)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(.white)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(.green)
                        .frame(width: 25, height: 25)
                    
                }
                .padding()
                
                HStack(alignment: .top){
                    Rectangle()
                        .fill(.orange)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(.white)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(.green)
                        .frame(width: 25, height: 25)
                    
                }
            }
        }
        ZStack{
            Color(.yellow)
            
            VStack{
                Rectangle()
                    .fill(.orange)
                    .frame(width: 100,height: 100)
                Rectangle()
                    .fill(.white)
                    .frame(width: 50,height: 50)
                
                HStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 100,height: 100)
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 50,height: 50)
                }
                .background(.black)
            }.background(.red)
                
        }.frame(width: 350, height: 500)
        
     
        
    }
}

#Preview {
    SwiftStack()
}
