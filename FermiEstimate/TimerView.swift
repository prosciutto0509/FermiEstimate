//
//  TimerView.swift
//  FermiEstimate
//
//  Created by 安田 悠麿 on 2020/11/02.
//

import Foundation
import SwiftUI

struct TimerView : View {
  @State var nowD:Date = Date()
  @State var endTimer = false
   let setDate:Date
   
   var timer: Timer {
       Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
           self.nowD = Date()
        
       }
   }
   
   var body: some View {
       Text(TimerFunc(from: setDate))
           .font(.largeTitle)
           .onAppear(perform: {
                          _ = self.timer
                      })
}

   func TimerFunc(from date:Date)->String{
       let cal = Calendar(identifier: .japanese)

       let timeVal = cal.dateComponents([.minute,.second], from: nowD,to: setDate)

       return String(format: "%01d分:%02d秒",
       timeVal.minute ?? 00,
       timeVal.second ?? 00)
       
    }
   
  }
