//
//  FriendCell.swift
//  VK-ClientSwiftUI
//
//  Created by Михаил Сирицын on 22.06.2022.
//

import SwiftUI

struct ListView: View {
    
    @State private var friends: [FriendsModel] = [
    FriendsModel(name: "Natasha Kozlova", imageName: "dev2"),
    FriendsModel(name: "Nikolay Demidov", imageName: "muzh1"),
    FriendsModel(name: "Pavel Svetlov", imageName: "muzh2"),
    FriendsModel(name: "Aleksander Tsoy", imageName: "muzh3"),
    FriendsModel(name: "Anastasiya Gromova", imageName: "dev3")
    ]
    
    var body: some View {
        
        List(friends) { friend in
            FriendsCell(friend: friend)
        }
        .navigationBarTitle("Friends", displayMode: .inline)
    }


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
}
