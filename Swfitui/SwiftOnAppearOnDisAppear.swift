//
//  SwiftOnAppearOnDisAppear.swift
//  Swfitui
//
//  Created by Shiraz on 29/07/26.
//

import SwiftUI

struct SwiftOnAppearOnDisAppear: View {
    @State var myText: String = "hello"
    @State var count: Int = 0
    var body: some View {
        NavigationStack{
            ScrollView{
                Text(myText)
                LazyVStack{
                    
                    ForEach(1..<50){i in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 300,height: 200)
                            .onAppear{
                                count+=1
                            }
                        
                        
                    }
                }
            }
            .onAppear(perform: {
                myText = "this is change"
            })
            
            .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    SwiftOnAppearOnDisAppear()
}
