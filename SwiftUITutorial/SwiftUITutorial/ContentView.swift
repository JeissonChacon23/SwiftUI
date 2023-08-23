//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/23/23.
//







import SwiftUI
struct ContentView: View{
    var body: some View{
        VStack(alignment: .trailing, spacing: 20){
                Text("8888888888888888888888888888888888888")
                Spacer()
                Text("8888888888888888")
                Text("8888888888888888")
            .background(.purple)
            
            
            Spacer() //Empuja los elementos para que ocupen lo maximo posible
            
            
            Text("00000000000000000000000000000000000")
                .padding()
                .background(.red)
            
            Spacer()
            
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
