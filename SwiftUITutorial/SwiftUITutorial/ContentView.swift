//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/23/23.
//

import SwiftUI //Tenemos que importar la clase SwiftUI
struct ContentView: View{ //ContentView es el nombre de la vista
    var body: some View{ //Una variable llamada body que tiene que devolver algo de tipo View
        VStack{
            Image(systemName: "globe")//invoca una imagen del sistema
                .foregroundColor(.blue)
                .imageScale(.large)//Aumenta el tamanio
            Text("Hello, World!")
                .foregroundColor(.blue)//Cambiar el color
                .font(.title2)
        }
        .padding()
    }
}

//Esto permite que se muestre el canvas 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Puedo usar Command + Click para mostar las opciones de una perte del codigo que este seleccionado
