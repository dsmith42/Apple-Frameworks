//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Dan Smith on 08/11/2020.
//

import SwiftUI

struct FrameworkDetailView: View {
  let framework: Framework
  
  var body: some View {
    
    VStack {
      Spacer()
      
      FrameworkTitleView(framework: framework)
      
      Text(framework.description)
        .font(.body)
        .padding()
      
      Spacer()
      
      Button(action: {} ) {
        AFButton(title: "Learn more")
      }
    }
  }
}

struct FrameworkDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkDetailView(framework: MockData.sampleFramework)
      .preferredColorScheme(.dark)
  }
}
