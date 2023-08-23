//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/23/23.
//







import SwiftUI
struct ContentView: View{
    var body: some View{
        VStack(){
            HStack{
                Spacer()
                Text("888888888888888888888888888888888888888")
                Text("666666666666666666666666666666666666666")
            }
                Text("8888888888888888888888888888888888888")
                Spacer()
            HStack{
                Text("8888888888888888")
                    .multilineTextAlignment(.leading)
                    .background(.cyan)
                Text("8888888888888888")
                    .background(.bar)
            }
            .background(.purple)
            
            
            Spacer() //Empuja los elementos para que ocupen lo maximo posible
            
            
            Text("00000000000000000000000000000000000")
                .padding()
                .background(.red)
            
            Spacer()
            
            HStack{
                Text("00000000000000000000000000000000000")
                    .padding()
                    .background(.green)
                Text("00000000000000000000000000000000000")
                    .padding()
                    .background(.yellow)
            }
        }
        .background(.gray)
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
