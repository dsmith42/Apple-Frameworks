//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Dan Smith on 08/11/2020.
//

import SwiftUI

struct AFButton: View {
  
  let title: String
  
  var body: some View {
    Text(title)
      .padding()
      .frame(width: 280, height: 50)
      .background(Color.red)
      .foregroundColor(.white)
      .cornerRadius(10)
  }
}

struct AFButton_Previews: PreviewProvider {
  static var previews: some View {
    AFButton(title: "Press me")
  }
}
