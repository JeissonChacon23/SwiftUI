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
            Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            Text("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb")
            Text("ccccccccccccccccccccccccccccccccccccccccccc")
            
            Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                .padding() //Deja unos margenes a los lados 
            Text("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb")
                .padding()
            Text("cccccccccccccccccccccccccccccccccccccc")
                .padding()
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
