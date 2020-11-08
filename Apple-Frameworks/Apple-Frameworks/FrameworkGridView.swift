//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Dan Smith on 08/11/2020.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {

      VStack(spacing: 10) {
        Image(MockData.sampleFramework.imageName)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        Text(MockData.sampleFramework.name)
          .lineLimit(1)
          .scaledToFit()
          .frame(width: 100, height: 50)
      }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
