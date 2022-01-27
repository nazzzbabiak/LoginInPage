//
//  ContentView.swift
//  SingIn Page
//
//  Created by Nazar Babyak on 22.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    
    var body: some View {
        GeometryReader { _ in
            VStack{
                Image("posterlogo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.5), radius: 11, x: 0, y: 11)
            
                ZStack{
                    SingUp(index: self.$index)
                        .zIndex(Double(self.index))
                    Login(index: self.$index)
                }
                HStack(spacing: 20){
                    Rectangle()
                        .fill(Color.black)
                        .frame(height: 1)
                    
                    Text("or")
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(height: 1)
                    
                }
                 .padding(.horizontal, 30)
                 .padding(.top, 50)
                
                HStack(spacing: 30){
                    Button(action: {
                        //
                    }, label: {
                        Image("facebook")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                    })
                    Button(action: {
                        //
                    }, label: {
                        Image("instagram")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                    })
                    Button(action: {
                        //
                    }, label: {
                        Image("google")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                    })
                    
                }
                .padding(.top, 30)
            }
            .padding(.vertical )
        }
        .background(Image("background")
                        .resizable()
                        .opacity(0.73)
                       
        .edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
