//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/23/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("swift")
            .resizable()
            //.scaledToFill() //Para que creazca lo maximo de alto
            //.scaledToFit() //Para que crezca lo maximo de ancho
            .frame(width: 300, height: 300, alignment: .center)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
