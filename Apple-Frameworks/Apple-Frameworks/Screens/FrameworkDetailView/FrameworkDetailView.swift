//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Dan Smith on 08/11/2020.
//

import SwiftUI

struct FrameworkDetailView: View {
  
  var framework: Framework
  @Binding var isShowingDetailView: Bool
  @State private var isShowingSafariView: Bool = false
  
  var body: some View {
    
    VStack {
      XDismissButton(isShowingModal: $isShowingDetailView)
      
      Spacer()
      
      FrameworkTitleView(framework: framework)
      
      Text(framework.description)
        .font(.body)
        .padding()
      
      Spacer()
      
      Button(action: {
        isShowingSafariView = true
      } ) {
        AFButton(title: "Learn more")
      }
    }
    .fullScreenCover(isPresented: $isShowingSafariView, content: {
      SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
    })
  }
}

struct FrameworkDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
      .preferredColorScheme(.dark)
  }
}
