//
//  PageModel.swift
//  Pinch
//
//  Created by Amir on 1/30/1403 AP.
//

import Foundation

struct Page: Identifiable {
  let id: Int
  let imageName: String
}

extension Page {
  var thumbnailName: String {
    return "thumb-" + imageName
  }
}
