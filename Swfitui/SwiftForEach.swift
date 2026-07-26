//
//  SwiftForEach.swift
//  Swfitui
//
//  Created by Shiraz on 25/07/26.
//

import SwiftUI

struct SwiftForEach: View {
    let data : [String] = [
        "hello",
        "my",
        "name",
        "is",
        "mohammad",
        "shiraz"
    ]
    var body: some View {
        VStack(){
            ForEach(data, id: \.self){item in
                Text(item)
                    .font(.title)
                    .padding()
                    .background(.gray)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 10)
            }
        }
        .frame(width: 200,height: 500)
        .background(.blue)
        .cornerRadius(10)
        .shadow(color: .blue, radius: 10)
        
    }
}

#Preview {
    SwiftForEach()
}
