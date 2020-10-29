//
//  ContentView.swift
//  FermiEstimate
//
//  Created by 安田 悠麿 on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
      NavigationView{
      VStack {
        Text("フェルミ推定")
          .padding()
          .frame(height: 120)
          .font(.largeTitle)
        Spacer()
        NavigationLink(destination: IndexView()) {
          
      Text("スタート")
        .frame(height: 120)
        .font(.title)
        .foregroundColor(.black)
        }
      }
        
      }
      .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
