//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/24/23.
//

import SwiftUI

private let programmers =  [Programmer(id: 1, name: "Jeisson Chacon", languages: "Java, C, Python, Swift", avatar: Image(systemName: "person")),
                           Programmer(id: 2, name: "Natalia Villamizar", languages: "C", avatar: Image(systemName: "person")),
                           Programmer(id: 3, name: "Daniel Mendez", languages: "Java, C, Python, HTML", avatar: Image(systemName: "person")),
                           Programmer(id: 4, name: "Valentina Villamizar", languages: "None", avatar: Image(systemName: "person")),
                           Programmer(id: 5, name: "Edwin Cristancho", languages: "Java", avatar: Image(systemName: "person"))]
struct ListView: View {
    var body: some View {
        List(programmers, id: \.id){ programmer in
            RowView(programmer: programmer)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
