//
//  ShapesView.swift
//  Swift-SwiftUI
//
//  Created by Jeisson Chacón on 18/05/24.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        //Circle(), Ellipse(), Capsule(style: .circular), Rectangle(), RoundedRectangle(cornerRadius: 25).shadow(color: .color1, radius: 10, x: 10, y: 10)
        /*
         //Ellipse()
         //Capsule(style: .circular)
         //Rectangle()
         RoundedRectangle(cornerRadius: 25)
         //Circle()
             //.fill(Color.cyan)
             //.foregroundColor(.pink)
             //.stroke()
             //.stroke(Color.red)
             //.stroke(Color.red, lineWidth: 30)
             //.stroke(Color.green, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
             .trim(from: 0.4, to: 4)
             //.stroke(Color.pink, lineWidth: 30)
             //.frame(width: 200, height: 100)
             .padding()
         */
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .trim(from: 0.4, to: 1)
                .fill(Color.color2)
                .frame(width: .infinity, height: 400)
                .offset(y: -400)
            RoundedRectangle(cornerRadius: 1)
                .trim(from: 0.4, to: 1)
                .fill(Color.color1)
                .frame(width: .infinity, height: 400)
                .offset(y: -450)
            
            Circle()
                .stroke(Color.green, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
                .padding()
                .frame(width: 260)
                .offset(y: -180)
            
            Rectangle()
                .stroke(Color.orange, lineWidth: 10)
                .frame(width: 100, height: 100)
            
            Capsule(style: .circular)
                .fill(Color.pink)
                //.stroke(Color.pink, lineWidth: 2)
                .frame(width: 300, height: 100)
                .offset(y: 110)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.color2)
                .frame(width: 200, height: 200)
                .shadow(color: .color1, radius: 10, x: 10, y: 10)
                .offset(y: 280)
        }
    }
}

#Preview {
    ShapesView()
}
