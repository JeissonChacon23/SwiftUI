//
//  RowView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/24/23.
//

import SwiftUI

struct RowView: View {
    var programmer: Programmer
    var body: some View {
        HStack{
            programmer.avatar
                .resizable()
                .frame(width: 35, height: 35)
                .padding(10)
            VStack(alignment: .leading){
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(
            id: 1, name: "Jeisson Chacón", languages: "Java, Swift, Python, C", avatar: Image(systemName: "person.fill")))
        .previewLayout(.fixed(width: 400, height: 60))
    }
}
