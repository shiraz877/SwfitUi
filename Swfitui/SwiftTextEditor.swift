//
//  SwiftTextEditor.swift
//  Swfitui
//
//  Created by Shiraz on 28/07/26.
//

import SwiftUI

struct SwiftTextEditor: View {
    @State var textFieldText: String = ""
    @State var saveText: String = ""
    var body: some View {
        NavigationStack {
            VStack{
                TextEditor(text: $textFieldText)
                    .frame(height: 500)
                    .foregroundColor(.black)
                    .background(.gray.opacity(0.3))
                Button(action: {
                    saveText = textFieldText
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                })
                
                Text(saveText)
            }
            .navigationTitle("Text Field ")
        }
    }
}

#Preview {
    SwiftTextEditor()
}
