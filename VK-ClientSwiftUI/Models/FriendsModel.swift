//
//  FriendsModel.swift
//  VK-ClientSwiftUI
//
//  Created by Михаил Сирицын on 25.06.2022.
//

import Foundation

class FriendsModel: Identifiable {
    
    let id: UUID = UUID()
    let name: String
    let imageName: String
    
    internal init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}
