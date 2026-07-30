//
//  SwiftTabGasture.swift
//  Swfitui
//
//  Created by Shiraz on 30/07/26.
//

import SwiftUI

struct SwiftTabGasture: View {
    @State var color: Color = .red
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                .frame(width: 300,height: 300)
            Button(action: {
                color = .blue
            }, label: {
                Text("Button")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
            })
            
            Text(" tab gasture Button")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue)
                .cornerRadius(10)
                .onTapGesture {
                    color = .pink
                }
            Spacer()
        }
    }
}

#Preview {
    SwiftTabGasture()
}
