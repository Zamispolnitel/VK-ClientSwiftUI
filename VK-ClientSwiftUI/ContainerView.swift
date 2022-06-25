//
//  ContainerView.swift
//  VK-ClientSwiftUI
//
//  Created by Михаил Сирицын on 24.06.2022.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var shouldShowMainView = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginView(isUserLoggedIn: $shouldShowMainView)
                NavigationLink(destination: ListView(), isActive: $shouldShowMainView) {
                    EmptyView()
                }
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
