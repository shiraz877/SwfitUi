//
//  SwiftState.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI

struct SwiftState: View {
    @State var count : Int = 0
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 100) {
                Text("Count : \(count)")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .background(
                        Capsule()
                            .stroke(Color.gray,lineWidth: 2.0)
                        
                    )
                    .shadow(radius: 10)
                
                HStack(spacing: 50){
                    Button(action: {
                        count-=1
                        
                    }, label: {
                        Text("Decreament")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .background(.red)
                            .cornerRadius(20)
                    })
                    
                    Button(action: {
                        count+=1
                    }, label: {
                        Text("Increament")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .background(.green)
                            .cornerRadius(20)
                    })
                }
            }
        }
        
        
    }
}

#Preview {
    SwiftState()
}
