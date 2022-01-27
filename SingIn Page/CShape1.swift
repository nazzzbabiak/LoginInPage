//
//  CShape1.swift
//  SingIn Page
//
//  Created by Nazar Babyak on 22.01.2022.
//

import SwiftUI

import SwiftUI

struct CShape1: Shape {
    
    func path(in rect: CGRect) -> Path {
        return Path{ path in
            path.move(to: CGPoint(x: 0, y: 100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}
    

