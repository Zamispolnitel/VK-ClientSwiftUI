//
//  GroupCell.swift
//  VK-ClientSwiftUI
//
//  Created by Михаил Сирицын on 23.06.2022.
//

import SwiftUI

struct GroupCell: View {
        
        var body: some View {
            
            HStack {
                
                Image("avatar")
                
                    .resizable()
                    .cornerRadius(50)
                    .frame(width: 70, height: 70)
                    .modifier(CircleShadow(
                        shadowColor: .black,
                        shadowRadius: 10))
                Spacer()
                
                Text("Группа ВКонтакте")
                    .font(.title2)
                
            }.padding()
                .background(Color.mint)
        }
    }

struct GroupCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupCell()
    }
}
