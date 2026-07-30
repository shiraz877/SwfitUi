//
//  SwiftObservableObjectAndStateObject.swift
//  Swfitui
//
//  Created by Shiraz on 30/07/26.
//

import SwiftUI
import Combine

class FruiteViewModel : ObservableObject {
    //published is same as class  as state in struct
    @Published var fruites: [FruiteModel] = []
    @Published var isLoading: Bool = false
    func loadData(){
        let data1 = FruiteModel(name: "banana", count: 4)
        let data2 = FruiteModel(name: "orange", count: 2)
        let data3 = FruiteModel(name: "mango", count: 1)
         isLoading=true
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            
            self.fruites.append(data1)
            self.fruites.append(data2)
            self.fruites.append(data3)
            self.isLoading = false
            
        }
        
    }
    
    func delete(index: IndexSet){
        fruites.remove(atOffsets: index)
    }

}

struct FruiteModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
    
}

struct SwiftObservableObjectAndStateObject: View {
//   @ObservedObject var fruites : FruiteViewModel = FruiteViewModel()
   @StateObject var fruites : FruiteViewModel = FruiteViewModel()
    
    //state object is for persistence when ever reload the view then data is persist in state object property wrapper
    var body: some View {
        NavigationStack{
            List{
                if fruites.isLoading{
                    ProgressView()
                }
                else{
                    ForEach(fruites.fruites){fuite in
                        HStack{
                            
                            Text(fuite.name)
                            Text("\(fuite.count)")
                        }
                    }
                    .onDelete(perform: fruites.delete)
                }
          
            }
            
            .onAppear{
                fruites.loadData()
            }
        }
    }
}

#Preview {
    SwiftObservableObjectAndStateObject()
}
