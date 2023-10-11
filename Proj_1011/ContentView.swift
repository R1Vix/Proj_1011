//
//  ContentView.swift
//  Proj_1011
//
//  Created by user14 on 2023/10/11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var number = Int.random(in: 1...6)
    @State private var temp: Int = 1
    
    func backgroundView(degrees: Double) -> some View {
        LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
            .frame(width: 250, height: 250)
            .rotationEffect(.degrees(degrees))
    }
    
    var body: some View {
        Image(systemName: "die.face.\(number).fill")
            .resizable()
        //.scaledToFit()
            .frame(width: 200, height: 200)
            .animation(.default, value: temp)
            .background(backgroundView(degrees: 10))
            .shadow(color: .black, radius: 10)
            .onTapGesture {
                number = Int.random(in: 1...6)
                temp += 1
            }
    }
}

#Preview {
    ContentView()
}
