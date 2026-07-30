//
//  SwiftIfLetGuar.swift
//  Swfitui
//
//  Created by Shiraz on 30/07/26.
//

import SwiftUI

struct SwiftIfLetGuard: View {
    @State var displayText: String? = ""
    @State var isLoading: Bool = true
    var body: some View {
        NavigationStack{
            
            VStack{
                Text("hello")
                if let text = displayText{
                    Text(text)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Button(action: {
                    isLoading.toggle()
                }, label: {
                    Text("switch")
                })
                
                
                
            }
            .navigationTitle("If Let guard")
            .onAppear{
                loadData()
            }
        }
    }
    
    func loadData(){
        guard let data = displayText else{
            displayText = "what are you doing"
            return
        }
    }
}

#Preview {
    SwiftIfLetGuard()
}
