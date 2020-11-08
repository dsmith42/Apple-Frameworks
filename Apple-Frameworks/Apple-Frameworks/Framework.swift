//
//  Framework.swift
//  Apple-Frameworks
//
//  Created by Dan Smith on 08/11/2020.
//

import Foundation

struct Framework: Hashable, Identifiable {
  var id = UUID()
  let name: String
  let imageName: String
  let urlString: String
  let description: String
}
