//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Dan Smith on 08/11/2020.
//

import SwiftUI

struct XDismissButton: View {
  
  @Binding var isShowingModal: Bool
  
  var body: some View {
    HStack {
      Spacer()
      Button {
        isShowingModal = false
      } label: {
        Image(systemName: "xmark")
          .foregroundColor(Color(.label))
          .imageScale(.large)
          .frame(width: 44, height: 44)
      }
    }.padding()
  }
}

struct XDismissButton_Previews: PreviewProvider {
  static var previews: some View {
    XDismissButton(isShowingModal: .constant(false))
      .previewLayout(.sizeThatFits)
  }
}
