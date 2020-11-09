//
//  Mondai1View.swift
//  FermiEstimate
//
//  Created by 安田 悠麿 on 2020/11/01.
//

import Foundation
import SwiftUI
struct Mondai1View: View {
  var toDate = Calendar.current.date(byAdding:.
                                      minute,value:1,to:Date())
  @State var ViewDraw:Bool = swichview(swich: 0)
  
  @State var endTimer = false
    var body: some View {
      VStack{
        HStack{
   
          
        Text("スターバックスの店舗数")
          .font(.title)
          .multilineTextAlignment(.trailing)
          
        }
        HStack(){
          Spacer()
        Text("前提確認")
          .font(.headline)
          Spacer()
        Text("全国の運営中の店舗")
          .font(.headline)
          Spacer()
        }.frame(height: 35)
        Text("全国にあるスターバックスの店舗数をフェルミ推定で求めてください。\nスタートボタンを押すとタイマーが表示されます。\n制限時間は５分です。").frame(height: 150)
        
        
      
    
          TimerView(setDate: toDate!)
     
        
        Spacer()
      }
      .navigationTitle("問題1(例)")
    }
  
}


func swichview(swich: Int) -> Bool{
  var draw:Bool
    if swich == 1{
  draw = true
    }else{
      draw = false
    }
  return draw
  }





struct Mondai1View_Previews: PreviewProvider {
  static var previews: some View {
    Mondai1View()
  }
}

