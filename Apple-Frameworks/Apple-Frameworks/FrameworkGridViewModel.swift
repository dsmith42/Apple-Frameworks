//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Dan Smith on 08/11/2020.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
  
  var selectedFramework: Framework? {
    didSet {
      isShowingDetailView = true
    }
  }
  
  @Published var isShowingDetailView = false
}
