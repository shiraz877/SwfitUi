//
//  SwiftExtractSubView.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI

struct SwiftExtractSubView: View {
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            
            VStack(spacing: 150){
                MyItem(title: "Apple", count: 6, color: .red)
                MyItem(title: "orange", count: 7, color: .orange)
                MyItem(title: "Banana", count: 12, color: .yellow)
            }
        }
    }
    struct MyItem : View {
        let title : String
        let count : Int
        let color : Color
        var body: some View {
            VStack{
                Text("\(count)")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                Text(title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .frame(width: 150,height: 150)
            )
            
            
            
        }
    }
}

#Preview {
    SwiftExtractSubView()
}
