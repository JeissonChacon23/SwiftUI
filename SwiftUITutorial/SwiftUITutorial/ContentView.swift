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
            ZStack{
                Text("00000000000000000000000000000000000")
                    .padding()
                    .background(.green)
                Text("0000000000000000")
                    .padding()
                    .background(.yellow)
            }
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
