//
//  ControlImageView.swift
//  Pinch
//
//  Created by Amir on 1/30/1403 AP.
//

import SwiftUI

struct ControlImageView: View {
  let icon: String
  
  var body: some View {
    Image(systemName: icon)
      .font(.system(size: 36))
  }
}

#Preview (traits: .sizeThatFitsLayout) {
  ControlImageView(icon: "minus.magnifyingglass")
    .preferredColorScheme(.dark)
    .padding()
}
