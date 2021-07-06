//
//  Cost.swift
//  CoursesProject
//
//  Created by Lucas Fanovich on 02/07/2021.
//

import SwiftUI

struct Price: View {
    var value: String
    var color: Color
    
    var body: some View {
        Text(value)
            .font(.custom("Helvetica Neue Bold", size: 35))
            .foregroundColor(color)
            .shadow(color: .gray, radius: 1, x: 0, y: 5)
    }
}

struct Price_Previews: PreviewProvider {
    static var previews: some View {
        Title(value: "Hola mundo", color: .white)
    }
}
