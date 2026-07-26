//
//  SwiftScrollView.swift
//  Swfitui
//
//  Created by Shiraz on 25/07/26.
//

import SwiftUI

struct SwiftScrollView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack{
                ForEach(0..<50){item in
                    ScrollView(.horizontal, showsIndicators: false,
                               content:{
                        LazyHStack{
                            ForEach(0..<20){item in
                                Rectangle()
                                    .fill(.white)
                                    .frame(width: 200,height: 150)
                                    .cornerRadius(20)
                                    .shadow(color: .gray.opacity(0.5), radius: 10)
                                    .padding()
                            }
                        }
                    }
                    )
                    
                    
                }
            }
        }
    }
}

#Preview {
    SwiftScrollView()
}
