//
//  ListDetailView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/24/23.
//

import SwiftUI

struct ListDetailView: View {
    var body: some View {
        VStack{
            Image(systemName: "")
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
                .shadow(color: Color.gray, radius: 5)
               Text("Name")
                .font(.largeTitle)
            Text("Languages")
                .font(.title)
            Spacer()
        }
        .background(.clear)
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView()
    }
}
