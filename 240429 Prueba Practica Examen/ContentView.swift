//
//  ContentView.swift
//  240429 Prueba Practica Examen
//
//  Created by Luis on 29/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var animal = [AnimalLista(nombreImagen: "leoncartoon", nombreAnimal: "Leon"), AnimalLista(nombreImagen: "gorrioncartoon", nombreAnimal: "Gorrion"), AnimalLista(nombreImagen: "perrocartoon", nombreAnimal: "Perro")]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(animal) { animal in
                    NavigationLink(destination: AnimalDetalleView(nombreAnimal: animal.nombreAnimal, nombreImagen: animal.nombreImagen)){
                        MostrarEnListView(nombreImagen: animal.nombreImagen, nombreAnimal: animal.nombreAnimal)
                    }
                }
            }.navigationBarTitle("Mis 3 animales Favoritos", displayMode: .inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
