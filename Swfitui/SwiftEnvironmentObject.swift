//
//  SwiftEnvironmentObject.swift
//  Swfitui
//
//  Created by Shiraz on 30/07/26.
//

import SwiftUI
import Combine

class MobileViewModel: ObservableObject {
    
    @Published var mobiles: [String] = []
    
    init(){
        loadData()
    }
    func loadData(){
        
        self.mobiles.append(contentsOf: ["iPhone","Android","BlackBerry","Nokia"])
        
    }
        
}


struct SwiftEnvironmentObject: View {
    @StateObject var mobiles: MobileViewModel = MobileViewModel()
    var body: some View {
        NavigationStack{
            List{
                ForEach(mobiles.mobiles, id: \.self){mobile in
                    NavigationLink(destination: FirstView(selectedItem: mobile), label: {Text(mobile)})
                    
                }
            }
        }
        .environmentObject(mobiles)
    }
        
}

struct FirstView: View {
    let selectedItem: String
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            NavigationLink(destination: FinalView(), label: {
                Text(selectedItem)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(40)
            })
//            Text()
            
        }
    }
}
struct FinalView: View{
    //environment object is like context api to avoid props drilling
    @EnvironmentObject var mobiles: MobileViewModel
    var body: some View{
        
        ForEach(mobiles.mobiles, id: \.self){mobile in
            Text(mobile)
        }
    }
}



#Preview {
        SwiftEnvironmentObject()
//    FirstView(selectedItem: "iphone")
    
}
