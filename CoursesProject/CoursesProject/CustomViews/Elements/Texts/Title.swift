//
//  Title.swift
//  CoursesProject
//
//  Created by Lucas Fanovich on 02/07/2021.
//
import SwiftUI

struct Title: View {
    var value: String
    var color: Color
    
    var body: some View {
        Text(value)
            .font(.custom("Helvetica Neue Medium", size: 20))
            .foregroundColor(color)
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(value: "Hola mundo", color: .red)
    }
}

