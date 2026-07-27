//
//  SwiftNavigation.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI

struct SwiftNavigation: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("hello")
            }
            .navigationBarItems(
                leading:
                    NavigationLink(destination: Text("hello"), label: {
                        Image(systemName: "person.fill")
                    },
                                   
                                  ))
            
            
        }
    }
}
struct MyItem3: View {
    var body: some View {
        Text("hello")
    }
}

#Preview {
    SwiftNavigation()
}
