//
//  StackedCards.swift
//  Swift-SwiftUI
//
//  Created by Jeisson Chacón on 21/05/24.
//

import SwiftUI

struct StackedCards: View {
    @State private var isRotationEnabled: Bool = true
    @State private var showsIndicator: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                GeometryReader{
                    let size = $0.size
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 0){
                            ForEach(items) { item in
                                CardView(item)
                                    .padding(.horizontal, 65)
                                    .frame(width: size.width)
                                    .visualEffect { content, geometryProxy in
                                        content
                                            .scaleEffect(scale(geometryProxy, scale: 0.1), anchor: .trailing)
                                            .rotationEffect(rotation(geometryProxy, rotation: isRotationEnabled ? 5 : 0))
                                            .offset(x: minX(geometryProxy))
                                            .offset(x: excessMinX(geometryProxy, offset: isRotationEnabled ? 8 : 10))
                                    }
                                    .zIndex(items.zIndex(item))
                            }
                        }
                        .padding(.vertical, 15)
                    }
                    .scrollTargetBehavior(.paging) //.viewAligned
                    .scrollIndicators(showsIndicator ? .visible : .hidden)
                    .scrollIndicatorsFlash(trigger: showsIndicator)
                }
                .frame(height: 410)
                .animation(.snappy, value: isRotationEnabled)
                
                VStack(spacing: 10){
                    Toggle("Rotation enabled", isOn: $isRotationEnabled)
                    Toggle("Shows scroll indicators", isOn: $showsIndicator)
                }
                .padding(15)
                .background(.bar, in: .rect(cornerRadius: 10))
                .padding(15)
            }
            .navigationTitle("Stacked Cards")
        }
    }
    
    @ViewBuilder
    func CardView(_ item: Item) -> some View{
        RoundedRectangle(cornerRadius: 15)
            .fill(item.color.gradient)
    }
    
    func minX(_ proxy: GeometryProxy) -> CGFloat{
        let minX = proxy.frame(in: .scrollView(axis: .horizontal)).minX
        return minX < 0 ? 0 : -minX
    }
    
    func progress(_ proxy: GeometryProxy, limit: CGFloat = 2) -> CGFloat{
        let maxX = proxy.frame(in: .scrollView(axis: .horizontal)).maxX
        let width = proxy.bounds(of: .scrollView(axis: .horizontal))?.width ?? 0
        let progress = maxX / width - 1.0
        let cappedProgress = min(progress, limit)
        
        return cappedProgress
    }
    
    func scale(_ proxy: GeometryProxy, scale: CGFloat = 0.1) -> CGFloat {
        let progress = progress(proxy)
        return 1 - (progress * scale)
    }
    
    func excessMinX(_ proxy: GeometryProxy, offset: CGFloat = 10) -> CGFloat{
        let progress = progress(proxy)
        return progress * offset
    }
    
    func rotation(_ proxy: GeometryProxy, rotation: CGFloat = 5) -> Angle{
        let progress = progress(proxy)
        return .init(degrees: progress * rotation)
    }
}

struct Item: Identifiable{
    var id: UUID = .init()
    var color: Color
}

var items: [Item] = [
    .init(color: .red),
    .init(color: .blue),
    .init(color: .green),
    .init(color: .purple),
    .init(color: .orange),
    .init(color: .pink),
]

extension [Item]{
    func zIndex(_ item: Item) -> CGFloat{
        if let index = firstIndex(where: {$0.id == item.id}){
            return CGFloat(count) - CGFloat(index)
        }
        return .zero
    }
}

#Preview {
    StackedCards()
}
