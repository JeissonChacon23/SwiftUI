//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/23/23.
//

import SwiftUI
struct ContentView: View{
    var body: some View{
        VStack{
            Image(systemName: "globe")//invoca una imagen del sistema
                .foregroundColor(.blue)
                .imageScale(.large)//Aumenta el tamanio
            Text("Hello, World!")
                .foregroundColor(.blue)//Cambiar el color
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
