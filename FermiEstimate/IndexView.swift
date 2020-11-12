//
//  IndexView.swift
//  FermiEstimate
//
//  Created by 安田 悠麿 on 2020/10/29.
//

import Foundation
import SwiftUI
struct IndexView: View {
  @State var swich1:Bool = true
    var body: some View {
      NavigationView{
        VStack{
        Text("問題目次")
          .font(.largeTitle)
          .frame(height: 60)
              List{
        
                NavigationLink(destination: Mondai1View(swich1: $swich1)){
          Text("問題1")
          
        }
        
        
        
        }
        
        
      }
        .navigationBarHidden(true)
        }
      
      .navigationBarHidden(true)
        
    }
  
}

struct IndexView_Previews: PreviewProvider {
  static var previews: some View {
    IndexView()
  }
}
