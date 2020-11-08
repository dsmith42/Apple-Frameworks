//
//  FrameworkListView.swift
//  Apple-Frameworks
//
//  Created by Dan Smith on 08/11/2020.
//

import SwiftUI

struct FrameworkListView: View {
  
  @StateObject var viewModel = FrameworkListViewModel()
  
  var body: some View {
    
    NavigationView {
      
      List {
        ForEach(MockData.frameworks) { framework in
          NavigationLink(
            destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView) ) {
            FrameworkTitleView(framework: framework)
          }
        }
      }
      .navigationTitle(" Frameworks")
    }
    .accentColor(Color(.label))
  }
}

struct FrameworkListView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkListView()
      .preferredColorScheme(.dark)
  }
}
