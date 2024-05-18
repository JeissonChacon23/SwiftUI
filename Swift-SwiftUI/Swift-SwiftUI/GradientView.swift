//
//  GradientView.swift
//  Swift-SwiftUI
//
//  Created by Jeisson Chacón on 18/05/24.
//

import SwiftUI

struct GradientView: View {
    var gradient = Gradient(colors: [Color.red,
                                     Color.purple])
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: gradient,
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    GradientView()
}
