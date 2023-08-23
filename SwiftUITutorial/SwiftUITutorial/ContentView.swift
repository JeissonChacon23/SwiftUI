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
            VStack(alignment: .trailing, spacing: 20){ //(alignment: .trailing) alineamiento a la derecha (alignment: .trailing) alineamiento a la izquiera (spacing: 20) El espacio que queda entre lineas o renglones
                Text("8888888888888888888888888888888888888")
                Text("8888888888888888")
                Text("8888888888888888")
            }.background(.purple)
            
            
            Text("00000000000000000000000000000000000")
                .padding()
                .background(.red)
            Text("00000000000000000000000000000000000")
                .padding()
                .background(.green)
            Text("00000000000000000000000000000000000")
                .padding()
                .background(.yellow)
        }
        .background(.gray)
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
