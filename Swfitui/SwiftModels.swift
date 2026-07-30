//
//  SwiftModels.swift
//  Swfitui
//
//  Created by Shiraz on 30/07/26.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let username: String
    let followers: Int
    let isVerified: Bool
}


struct SwiftModels: View {
    let users: [UserModel] = [
        UserModel(name: "shiraz", username: "shiraz123", followers: 234, isVerified: true),
        UserModel(name: "mohammad", username: "mohammad123", followers: 24, isVerified: false),
        UserModel(name: "ifra", username: "ifra3", followers: 102, isVerified: true),
        UserModel(name: "warda", username: "warda23", followers: 204, isVerified: false),
    ]
    var body: some View {
        List{
            ForEach(users){user in
                HStack{
                    Circle()
                        .frame(width: 30,height: 30)
                    VStack(alignment: .leading){
                        Text(user.name)
                            .fontWeight(.semibold)
                        Text("\(user.username)@gamil.com")
                            .font(.caption)
                    }
                    Spacer()
                    if user.isVerified{
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.blue)
                    }
                    VStack{
                        
                        Text("\(user.followers)")
                        Text("followers")
                            .font(.caption)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    SwiftModels()
}
