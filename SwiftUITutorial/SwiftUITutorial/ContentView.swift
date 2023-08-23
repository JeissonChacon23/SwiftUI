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
                .background(.purple)
            
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
