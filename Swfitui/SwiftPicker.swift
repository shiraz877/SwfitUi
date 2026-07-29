//
//  SwiftPicker.swift
//  Swfitui
//
//  Created by Shiraz on 28/07/26.
//

import SwiftUI

struct SwiftPicker: View {
    @State var selection: String = "1"
    var body: some View {
        VStack{
            HStack{
                Text("Age")
                Text(selection)
            }
            Picker(
                selection: $selection,
                label: Text("select date"),
                content: {
                    Text("1").tag("1")
                    Text("2").tag("2")
                    Text("3").tag("3")
                    Text("4").tag("4")
                    Text("5").tag("5")
                })
            .pickerStyle(InlinePickerStyle())
        }
    }
}

#Preview {
    SwiftPicker()
}
