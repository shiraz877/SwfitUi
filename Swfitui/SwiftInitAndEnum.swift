//
//  SwiftInitAndEnum.swift
//  Swfitui
//
//  Created by Shiraz on 25/07/26.
//

import SwiftUI

struct SwiftInitAndEnum: View {
    let backgroundColor: Color
    let title: String
    let count: Int
    
    enum Fruite {
        case Apples
        case Oranges
        case banana
    }
    
    init( title: Fruite, count: Int) {
      
        self.count = count
        
        if title == .Apples {
            self.title = "Apples"
            self.backgroundColor = .red
        }
        else if title == .Oranges{
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
        else {
            self.title = "Banana"
            self.backgroundColor = .yellow
        }
    }
    //init is initialiser this is the function which call when ever the views load
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.title)
                .underline()
            Text(title)
                .font(.title3)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(20)
       
    }
}

#Preview {
    SwiftInitAndEnum( title:.Apples , count: 5)
    SwiftInitAndEnum( title:.Oranges , count: 50)
    SwiftInitAndEnum( title:.banana , count: 50)
}
