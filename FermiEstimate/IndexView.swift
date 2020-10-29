//
//  IndexView.swift
//  FermiEstimate
//
//  Created by 安田 悠麿 on 2020/10/29.
//

import Foundation
import SwiftUI
struct IndexView: View {
    var body: some View {
  
        Text("フェルミ推定")
          .padding()
          .frame(height: 120)
          .font(.largeTitle)
    
       
        
    
        
          .navigationBarBackButtonHidden(true)
    }
  
}

struct IndexView_Previews: PreviewProvider {
  static var previews: some View {
    IndexView()
  }
}
