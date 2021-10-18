//
//  NewAccountView.swift
//  LoginPage
//
//  Created by David Razmadze on 10/18/21.
//

import SwiftUI

struct NewAccountView: View {
  
  // MARK: - Properties
  
  @State var email: String = ""
  @State var password: String = ""
  @State var passwordAgain: String = ""
  
  // MARK: - Body
  
  var body: some View {
    NavigationView {
      ZStack {
        
        // Background Color
        Color.white
          .ignoresSafeArea(edges: .all)
        
        // Main View
        VStack {
          
          // Fields
          VStack(spacing: 20) {
            TextField("Email", text: $email, prompt: Text("Enter email..."))
              .font(.title2)
              .textFieldStyle(.roundedBorder)
              .autocapitalization(.none)
            
            SecureField("Password", text: $password, prompt: Text("Enter password..."))
              .font(.title2)
              .textFieldStyle(.roundedBorder)
            
            SecureField("Password", text: $passwordAgain, prompt: Text("Enter password again..."))
              .font(.title2)
              .textFieldStyle(.roundedBorder)
          }
          .padding()
          .padding(.bottom, 8.0)
          
          // Buttons
          VStack(spacing: 16) {
            
            // Create Account
            Button {
              print("email: \(email)")
              
              print("password: \(password)")
              print("password: \(passwordAgain)")
            } label: {
              Text("Create Account")
                .frame(maxWidth: .infinity)
                .font(.title2)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(16)
            
          }
          .padding()
          
          Spacer()
          
          Button {
            print("TODO: Go back to LoginView")
          } label: {
            Text("Already have an account? Login")
              .frame(maxWidth: .infinity)
              .font(.title3)
              .foregroundColor(.gray)
          }
          .padding()
          
        }
        
        
      }
      // Title
      .navigationTitle("Create new account")
    }
  }
}

struct NewAccountView_Previews: PreviewProvider {
  static var previews: some View {
    NewAccountView()
  }
}
