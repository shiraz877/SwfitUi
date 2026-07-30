//
//  SwiftAppStorage.swift
//  Swfitui
//
//  Created by Shiraz on 30/07/26.
//

import SwiftUI

struct SwiftAppStorage: View {
    @AppStorage("name") var currentName: String?
    var body: some View {
        Text(currentName ?? "shiraz")
        Button(action: {
                currentName = "Mohammad"
        }, label: {
            Text("SAVE")
                .padding()
                .foregroundColor(.white)
                .background(.blue)
        })
    }
}

#Preview {
    SwiftAppStorage()
}
