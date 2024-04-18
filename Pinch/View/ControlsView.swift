//
//  ControlsView.swift
//  Pinch
//
//  Created by Amir on 1/30/1403 AP.
//

import SwiftUI

struct ControlsView: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        Group {
            HStack {
                // SCALE DOWN
                Button {
                    
                } label: {
                    ControlImageView(icon: "minus.magnifyingglass")
                }
                // RESET
                Button {
                    
                } label: {
                    ControlImageView(icon: "arrow.up.left.and.down.right.magnifyingglass")
                }
                
                // SCALE UP
                Button {
                    
                } label: {
                    ControlImageView(icon: "plus.magnifyingglass")
                }
            }
            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
            .background(.ultraThinMaterial)
            .cornerRadius(12)
            .opacity(isAnimating ? 1 : 0 )
            
        }
        .onAppear(perform: {
            withAnimation(.spring) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    ControlsView()
        .preferredColorScheme(.dark)
        .padding()
}
