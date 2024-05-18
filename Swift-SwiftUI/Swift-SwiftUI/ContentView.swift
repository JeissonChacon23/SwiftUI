//
//  ContentView.swift
//  Swift-SwiftUI
//
//  Created by Jeisson Chacón on 17/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Swift")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
