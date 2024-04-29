//
//  MostrarEnListView.swift
//  240429 Prueba Practica Examen
//
//  Created by Luis on 29/4/24.
//

import SwiftUI

struct MostrarEnListView: View {
    var nombreImagen:String
    var nombreAnimal:String
    var body: some View {
        HStack{
            Spacer()
            HStack{
                Text(nombreAnimal)
                    .font(.custom("Helvetica-Medium", size:34))
                    .bold()
                    .foregroundColor(.black)
                Image(nombreImagen)
                    .resizable()
                    .scaledToFit()
                    .frame(width:150, height: 200)
                    .clipped()
                    .cornerRadius(20.0)
                
            }
            Spacer()
        }.padding(.top, 5)
            .padding(.bottom,5)
    }
}

struct MostrarEnListView_Previews: PreviewProvider {
    static var previews: some View {
        MostrarEnListView(nombreImagen: "gorrioncartoon", nombreAnimal: "Gorrión")
    }
}
