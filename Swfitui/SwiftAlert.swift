//
//  SwiftAlert.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI

struct SwiftAlert: View {
    @State var showAlert: Bool = false
    var body: some View {
        Button(action: {
            showAlert.toggle()
        }, label: {
            Text("Button")
        })
        .alert( isPresented: $showAlert, content: {
            Alert(
                title: Text("there is an error"),
                dismissButton: .cancel()
            )
        })
    }
}

#Preview {
    SwiftAlert()
}
