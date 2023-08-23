//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/23/23.
//

import SwiftUI








struct ImageView: View {
    var body: some View {
        VStack {
            Image("swift")
                .resizable()
                .padding(50)
                .frame(width: 300, height: 300, alignment: .center)
                .background(Color.indigo)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))//Enmarca un circulo en la imagen
                .shadow(color: Color.gray, radius: 5)
        }
    }
}










struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
