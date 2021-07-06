//
//  CourseItemView.swift
//  CoursesProject
//
//  Created by Lucas Fanovich on 02/07/2021.
//

import SwiftUI

struct SmallItemView: View {
    var outstandingMessage: String?
    var title: String
    var detail: String
    var price: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        
        ZStack {
            VStack {
                Title(value: title, color: textColor)
                Price(value: price, color: textColor)
                Detail(value: detail, color: textColor)
            }
            .padding(.all, 15)
            .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(backgroundColor)
            .cornerRadius(15)
            if let outstanding = outstandingMessage {
                Text(outstanding)
                    .font(.system(.caption, design: .rounded))
                    .lineLimit(2)
                    .padding(.all, 5)
                    .background(Color.yellow)
                    .offset(x: 0, y: -75)
            }
        }
    }
}

struct SmallItemView_Previews: PreviewProvider {
    static var previews: some View {
        SmallItemView(outstandingMessage: "Aprovecha", title: "Basico", detail: "Solo un curso", price: "$10.00", backgroundColor: .blue, textColor: .red)
    }
}
