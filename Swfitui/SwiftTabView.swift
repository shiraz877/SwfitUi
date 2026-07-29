//
//  SwiftTabView.swift
//  Swfitui
//
//  Created by Shiraz on 29/07/26.
//

import SwiftUI

struct SwiftTabView: View {
    let data: [String] = [
        "house.fill","heart.fill","globe","person.fill"
    ]
    var body: some View {
        TabView{
            ForEach(data,id: \.self){item in
                Image(systemName: item)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300,height: 300)
                    .padding()
                    .background(.gray)
                    .cornerRadius(15)
                
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
//        TabView{
//            HomeView()
//                .tabItem({
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                })
//            Text("Browser")
//                .tabItem({
//                    Image(systemName: "globe")
//                    Text("Browser")
//                })
//            
//            Text("Person")
//                .tabItem({
//                    Image(systemName: "person.fill")
//                    Text("Person")
//                })
//        }
        
        //        TabView {
        //            Text("Home")
        //                .tabItem({
        //                    Image(systemName: "house.fill")
        //                    Text("Home")
        //                })
        //            Text("Browser")
        //                .tabItem({
        //                    Image(systemName: "globe")
        //                    Text("Browser")
        //                })
        //
        //            Text("Person")
        //                .tabItem({
        //                    Image(systemName: "person.fill")
        //                    Text("Person")
        //                })
        //
        //        }
        //        .accentColor(.red)
    }
}

#Preview {
    SwiftTabView()
}
struct HomeView: View {
    var body: some View {
        Text("Home")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 300,height: 500)
            .background(.black)
            .cornerRadius(20)
            .shadow(radius: 15)
    }
}
