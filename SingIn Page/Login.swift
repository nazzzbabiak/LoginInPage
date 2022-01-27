//
//  Login.swift
//  SingIn Page
//
//  Created by Nazar Babyak on 22.01.2022.
//

import SwiftUI

struct Login: View {
    
    @State var email = ""
    @State var pass = ""
    @Binding var index: Int
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                HStack{
                    VStack(spacing: 10){
                        Text("Login")
                            .foregroundColor(self.index == 0 ? .white : .blue )
                            .font(.title)
                            .fontWeight(.bold)
                        Capsule()
                            .fill(self.index == 0 ? .white : .red)
                            .frame(width: 100, height: 7)
                        
                    }
                    
                    Spacer()
                }
                .padding(.top, 30)
                
                VStack{
                    HStack{
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.white)
                        TextField("Email Adress" , text: self.$email)
                     }
                    Divider()
                        .background(Color.white.opacity(0.3))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    HStack{
                        Image(systemName: "eye.fill")
                            .foregroundColor(.white)
                        SecureField("Password" , text: self.$pass)
                     }
                    Divider()
                        .background(Color.white.opacity(0.3))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                HStack{
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        //
                    }) {
                        Text("Forget Password?")
                            .foregroundColor(Color.white.opacity(0.55))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color.red)
            .clipShape(CShape())
            .contentShape(CShape())
            .shadow(color: .black.opacity(0.3), radius: 5, x: -11, y: -11 )
            .onTapGesture {
                self.index = 0
            }
            .cornerRadius(22)
            .padding(.horizontal, 20)
            
            Button(action: {
                
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .shadow(color: Color.white.opacity(0.2), radius: 11, x: 11 , y: -11)
                
            }
            .offset(y: 25)
            .opacity(self.index == 0 ? 1 : 0 )
        }
    }
    
    
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
