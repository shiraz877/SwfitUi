//
//  SwiftIgnoreSafeArea.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI

struct SwiftIgnoreSafeArea: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            VStack{
                Text("hello world")
                    .font(.title)
                    .foregroundColor(.white)
                ScrollView{
                    VStack{
                        ForEach(0..<50){data in
                            Rectangle()
                                .fill(.white)
                                .frame(width: 200,height: 200)
                                .cornerRadius(10)
                                .padding()
                                .shadow(color: .white, radius: 10)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SwiftIgnoreSafeArea()
}
