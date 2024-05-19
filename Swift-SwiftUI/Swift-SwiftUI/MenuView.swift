//
//  MenuView.swift
//  Swift-SwiftUI
//
//  Created by Jeisson Chacón on 19/05/24.
//

import SwiftUI

struct MenuView: View {
    @State private var optionSelected: Int = 0
    @State private var photoSelection: String = ""
    var gradient = Gradient(colors: [Color.white, Color.purple])
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: gradient,
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack {
                        Image(systemName: "filemenu.and.selection")
                            .resizable()
                            .frame(width: 130, height: 100)
                            .foregroundColor(.purple) // Cambié color1 a .purple ya que color1 no está definido
                            .padding()
                        
                        Menu("Menu") {
                            Text("Select a category")
                            Button(action: {
                                optionSelected = 0
                            }) {
                                Label("Payment service", systemImage: "rectangle.portrait.on.rectangle.portrait.angled.fill")
                            }
                            Button(action: {
                                optionSelected = 1
                            }) {
                                Label("Food", systemImage: "cart.fill")
                            }
                            Button(action: {
                                optionSelected = 2
                            }) {
                                Label("Another option", systemImage: "star.fill")
                            }
                        }
                        Text("Option selected **\(optionSelected)**")
                        
                        Divider()
                        
                        Text("Context Menu")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .padding(.vertical, 10)
                        Image(systemName: "photo.stack")
                            .resizable()
                            .symbolRenderingMode(.multicolor)
                            .symbolEffect(.variableColor)
                            .frame(width: 130, height: 120)
                            .padding()
                            .contextMenu(ContextMenu(menuItems: {
                                Text("Select a category")
                                Button(action: {
                                    photoSelection = "Upload Photo"
                                }) {
                                    Label("Upload Photo", systemImage: "arrowshape.down.circle")
                                }
                                Button(action: {
                                    photoSelection = "Take Photo"
                                }) {
                                    Label("Take Photo", systemImage: "person.and.background.dotted")
                                }
                                Button(action: {
                                    optionSelected = 2
                                }) {
                                    Label("Select Photo", systemImage: "person.crop.rectangle.badge.plus")
                                }
                            }))
                        Text("Photo Selected **\(photoSelection)**")
                            .font(.title2)
                            .padding()
                    }
                }
            }
        }
        .navigationTitle("Menu")
    }
}

#Preview {
    MenuView()
}
