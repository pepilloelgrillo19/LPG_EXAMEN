//
//  AnimalDetalleView.swift
//  240429 Prueba Practica Examen
//
//  Created by Luis on 29/4/24.
//

import SwiftUI


struct AnimalDetalleView: View {
    var nombreAnimal:String="Gorrión"
    var nombreImagen:String="gorrioncartoon"
    var body: some View {
        VStack {
            Text(nombreAnimal)
                .font(.largeTitle)
                .bold()
            Spacer()
            Image(nombreImagen)
                .resizable()
                .frame(width: 400)
                .scaledToFit()
        }
    }
}

struct AnimalDetalleView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetalleView()
    }
}
