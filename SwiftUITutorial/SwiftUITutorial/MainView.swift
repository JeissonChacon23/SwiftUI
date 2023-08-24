//
//  MainView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/24/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            ScrollView{
                MapView()
                    .frame(height: 500)
                Divider()
                    .padding()
                ImageView()
                    //.offset(y: -100)
                    .frame(height: 500)
                Divider()
                    .padding()
                ContentView()
                    .frame(height: 500)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
