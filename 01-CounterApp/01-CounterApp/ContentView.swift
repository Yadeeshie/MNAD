//
//  ContentView.swift
//  01-CounterApp
//
//  Created by Yadeesha Karunathilake on 2025-11-20.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    @State private var message: String = ""
    
    let maxLimit = 10
    let minLimit = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Counter App 🧮")
                .font(.largeTitle)
                .bold()
            Text ("Count is: \(count)")
                .font(.system(size: 25))
                .italic()
            
            Text(message)
                .foregroundStyle(.gray)
                .font(.headline)
            
            HStack(spacing:20) {
                Button("-") {
                    if count > minLimit {
                        count -= 1
                        message = ""
                    } else {
                        message = "Can't go down below zero 😱"
                    }
                }
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .tint(.red)
                
                Button("+"){
                    if count < maxLimit {
                        count += 1
                        message = ""
                    } else {
                        message = "Can't go above ten 😱"
                    }
                }
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .tint(.green)
            }
            
            .padding()
            
            Button("Reset"){
                count = 0
                message = ""
            }
            .font(.system(size: 20))
            .buttonStyle(.borderedProminent)
            .tint(.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
