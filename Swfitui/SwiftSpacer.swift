//
//  SwiftSpacer.swift
//  Swfitui
//
//  Created by Shiraz on 25/07/26.
//

import SwiftUI

struct SwiftSpacer: View {
    var body: some View {
//        VStack{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100,height: 100)
//            Spacer()
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 100,height: 100)
//            Spacer()
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 100, height: 100)
//            Spacer()
//        }
        VStack {
            HStack{
                Image(systemName: "xmark")
                    .font(.title)
                Spacer()
                Image(systemName: "gear")
                    .font(.title)
            }
            .padding(.horizontal)
            Spacer()
            RoundedRectangle(cornerRadius: 20 )
                .frame(width: 350,height: 50)
        }
   
    }
}

#Preview {
    SwiftSpacer()
}
