//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Dan Smith on 08/11/2020.
//

import SwiftUI

struct FrameworkTitleView: View {
  
  let framework: Framework
  
  var body: some View {
    HStack {
      Image(framework.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 70, height: 70)
      Text(framework.name)
        .font(.title2)
        .fontWeight(.semibold)
        .scaledToFit()
        .minimumScaleFactor(0.5)
        .padding()
    }
  }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
      FrameworkTitleView(framework: MockData.sampleFramework)
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
