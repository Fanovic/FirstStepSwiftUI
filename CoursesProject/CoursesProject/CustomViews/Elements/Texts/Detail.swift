//
//  Detail.swift
//  CoursesProject
//
//  Created by Lucas Fanovich on 02/07/2021.
//

import SwiftUI

struct Detail: View {
    var value: String
    var color: Color
    
    var body: some View {
        Text(value)
            .font(.custom("Helvetica Neue", size: 18))
            .foregroundColor(color)
            .lineLimit(2)
            .multilineTextAlignment(.center)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Title(value: "Hola mundo", color: .red)
    }
}

