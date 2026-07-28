//
//  SwiftTextField.swift
//  Swfitui
//
//  Created by Shiraz on 27/07/26.
//

import SwiftUI

struct SwiftTextField: View {
    @State var textFieldText: String = ""
    @State var dataItem: [String] = []
    var body: some View {
        VStack{
            TextField("Type Something Here...", text: $textFieldText)
                .padding()
                .cornerRadius(10)
                .background(Color.gray.opacity(0.3))
            Button(action: {
                if isAppropiate(){
                    saveText()
                }
            }, label: {
                Text("SAVE")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(isAppropiate()  ? Color.blue : Color.gray)
                    .cornerRadius(10)
            })
            .disabled(!isAppropiate())
            
            ForEach(dataItem, id: \.self){ data in
                Text(data)
            }
            
        }
    }
    func saveText(){
        dataItem.append(textFieldText)
        textFieldText=""
    }
    
    func isAppropiate() -> Bool{
        if textFieldText.count < 3 {
            return false
        }
        return true
    }
    
    
}

#Preview {
    SwiftTextField()
}
