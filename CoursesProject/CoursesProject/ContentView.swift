//
//  ContentView.swift
//  CoursesProject
//
//  Created by Lucas Fanovich on 02/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Cursos")
                .font(.custom("Helvetica Neue Bold", size: 30))
                .padding(.all, 5)
                
            HStack {
                SmallItemView(title: "Basico", detail: "Un curso incluido", price: "$9.99", backgroundColor: .green, textColor: .white)
                Spacer()
                SmallItemView(outstandingMessage: "El mejor para empezar!",title: "Carrera", detail: "Toda una carrera", price: "$19.99", backgroundColor: Color(red: 211/255, green: 211/255, blue: 211/255), textColor: .black)
            }.padding(.all, 10)
            LargeItemView(outstandingMessage: "Conviertete en un master del universo", title: "Definitivo", detail: "Todos los cursos online", price: "$99.99", backgroundColor: .black, textColor: .white)
            
                
        }
        .padding(.all, 10)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
