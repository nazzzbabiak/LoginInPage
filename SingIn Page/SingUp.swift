//
//  SingUp.swift
//  SingIn Page
//
//  Created by Nazar Babyak on 22.01.2022.
//

import SwiftUI

struct SingUp: View {
    
    @State var email = ""
    @State var pass = ""
    @State var repass = ""
    @Binding var index: Int
    
    var body: some View {
        ZStack(alignment: .bottom){
        VStack{
            HStack{
                Spacer(minLength: 0)
                
                VStack(spacing: 10){
                    
                    Text("SignUp")
                        .foregroundColor(self.index == 1 ? .white : .blue)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Capsule()
                        .fill(self.index == 1 ? Color.white : Color.clear)
                        .frame(width: 100, height: 7)
                    
                    
                }
            }
            .padding(.top, 30)
            
            VStack{
                HStack(spacing: 15){
                    Image(systemName: "envelope.fill")
                        .foregroundColor(.blue)
                    TextField("Email Adress" , text: self.$email)
                 }
                Divider()
                    .background(Color.white.opacity(0.3))
            }
            .padding(.horizontal)
            .padding(.top, 40)
            
            
            VStack{
                HStack(spacing: 15){
                    Image(systemName: "eye.fill")
                        .foregroundColor(.orange)
                    SecureField("Password" , text: self.$pass)
                    
                }
                Divider()
                    .background(Color.white.opacity(0.55))
            }
            .padding(.horizontal)
            .padding(.top, 30)
            
            VStack{
                HStack(spacing: 15){
                    Image(systemName: "eye.fill")
                        .foregroundColor(.orange)
                    SecureField("Password" , text: self.$repass)
                    
                }
                Divider()
                    .background(Color.white.opacity(0.55))
            }
            .padding(.horizontal)
            .padding(.top, 30)
        }
        .padding()
        .padding(.bottom, 55)
        .background(Color.green)
        .clipShape(CShape1())
        .contentShape(CShape1())
        .shadow(color: Color.white.opacity(0.2), radius: 11, x: 11 , y: -11)
        .onTapGesture {
            self.index = 1
        }
        .cornerRadius(11)
            
            Button(action: {
            }) {
                Text("SINGUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .shadow(color: Color.white.opacity(0.22), radius: 4, x: 2, y: -11)
            }
            .offset(y: 25)
            .opacity(self.index == 1 ? 1 : 0)
    }
}
}

struct SingUp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
