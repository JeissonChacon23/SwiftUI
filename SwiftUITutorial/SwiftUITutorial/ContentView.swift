//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/23/23.
//







import SwiftUI
struct ContentView: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 20){
            ZStack{
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                    .background(.indigo)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.yellow)
                    .padding(40)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.green)
                    .padding(60)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.purple)
                    .padding(80)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.orange)
                    .padding(100)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.bar)
                    .padding(120)
            }
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
