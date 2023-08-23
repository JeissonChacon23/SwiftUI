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
                Image(systemName: "moonrise.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.secondary)
                Image(systemName: "moonset.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.primary)
            
                Spacer()
                
                HStack{
                    Image(systemName: "moonrise.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.secondary)
                    Spacer()
                    Image(systemName: "moonset.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.primary)
            }
        }
    }
}










struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
