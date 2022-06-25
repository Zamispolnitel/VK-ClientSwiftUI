//
//  FriendsCell.swift
//  VK-ClientSwiftUI
//
//  Created by Михаил Сирицын on 25.06.2022.
//

import SwiftUI

struct FriendsCell: View {
    
    let friend: FriendsModel
    
    var body: some View {
        
        HStack {
            Image(friend.imageName)
                .resizable()
                .cornerRadius(50)
                .frame(width: 70, height: 70)
                .modifier(CircleShadow(
                    shadowColor: .black,
                    shadowRadius: 10))
            Spacer()
            
            Text("\(friend.name)")
                .font(.title2)
                
        }.padding()
        
    }
}
