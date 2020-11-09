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
  @State var endTimer  = 1
  @State var TimerScreen = true
   let setDate:Date
   
   var timer: Timer {
       Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
        
           self.nowD = Date()
        endTimer = TimerEnd(from: nowD)
        if endTimer == 0{
          TimerScreen = false
          
        }
       }
   }
   
 
   var body: some View {
    if TimerScreen{
       Text(TimerFunc(from: setDate))
           .font(.largeTitle)
           .onAppear(perform: {
                          _ = self.timer
                      })
    }
}

   func TimerFunc(from date:Date)->String{
       let cal = Calendar(identifier: .japanese)

       let timeVal = cal.dateComponents([.minute,.second], from: nowD,to: date)

       return String(format: "%01d分%02d秒",
       timeVal.minute ?? 00,
       timeVal.second ?? 00)
    
       
    }
  
  
func TimerEnd(from date:Date)->Int{
  let cal = Calendar(identifier: .japanese)
  var count  = 0
  let timeVal = cal.dateComponents([.minute,.second], from: date,to: setDate)

  func counter() -> Int {
    if timeVal.second == 00{
      count = 0
      timer.invalidate()
    }else{
      count = 1
    }
    return count
  }
  return  counter()
  
}
  
   
  }

struct TimerView_Previews: PreviewProvider {
  static var previews: some View {
    /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
  }
}
