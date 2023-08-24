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
                .frame(width: 500, height: 500, alignment: .center)
            }
        }
    }










struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
