//
//  LargeItemView.swift
//  CoursesProject
//
//  Created by Lucas Fanovich on 06/07/2021.
//

import SwiftUI

struct LargeItemView: View {
    var outstandingMessage: String?
    var title: String
    var detail: String
    var price: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                VStack {
                    Image(systemName: "lightbulb")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 40, height: 40, alignment: .center)
                    Title(value: title, color: textColor)
                    Price(value: price, color: textColor)
                    Detail(value: detail, color: textColor)
                }
                .padding(.all, 15)
                .background(backgroundColor)
                .cornerRadius(15)
                Spacer()
            }
            .background(backgroundColor)
            .cornerRadius(15)
            if let outstanding = outstandingMessage {
                Text(outstanding)
                    .font(.system(.caption, design: .rounded))
                    .padding(.all, 5)
                    .background(Color.yellow)
                    .offset(x: 0, y: -85)
            }
        }
    }
}

struct LargeItemView_Previews: PreviewProvider {
    static var previews: some View {
        LargeItemView(outstandingMessage: "El mejor curso", title: "Basico", detail: "Contiene solo un curso", price: "$9.99", backgroundColor: .blue, textColor: .black)
    }
}
