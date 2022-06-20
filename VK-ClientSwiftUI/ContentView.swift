//
//  ContentView.swift
//  VK-ClientSwiftUI
//
//  Created by Михаил Сирицын on 19.06.2022.


import SwiftUI
import Combine

struct ContentView: View {

    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo = true
    
    private let keyboardPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for:           UIResponder.keyboardWillShowNotification)
            .map { notification in true },
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { notification in false }
        ).eraseToAnyPublisher()

    var body: some View {

        ZStack {
            GeometryReader { geometry in Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: geometry.size.width,
                           maxHeight: geometry.size.height)
            }
            
    ScrollView {

            VStack {
                
                if self.shouldShowLogo {
                    
                Text("VK-Client")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.top, 32)
                    .font(.largeTitle)
                }

                HStack {
                    Text("Login:")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    Spacer()
                    TextField("Enter Login", text: $login)
                        .frame(maxWidth: 200)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }

                HStack {
                    Text("Password:")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    Spacer()
                    SecureField("Enter password", text: $password)
                        .frame(maxWidth: 200)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            


            Button {
                print("Button pressed")
            } label: {
                Label("Log in", systemImage: "chevron.right.circle")
            }
            
            .padding(.top, 30)
            .disabled(self.password.isEmpty || self.login.isEmpty)
            .foregroundColor(Color.yellow)

            Spacer()
        }
        .padding([.leading, .trailing], 20)
        .frame(maxWidth: 350)
        .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}
.onTapGesture {
    UIApplication.shared.endEditing()
}
        .onReceive(self.keyboardPublisher) { isKeyboardShow in
            withAnimation(.easeIn(duration: 0.5)) {
                self.shouldShowLogo = !isKeyboardShow
            }
        }
    }
}

extension UIApplication {
    func endEditing() {
        self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


