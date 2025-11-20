//
//  ContentView.swift
//  01-CounterApp
//
//  Created by Yadeesha Karunathilake on 2025-11-20.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Counter App 🧮")
                .font(.largeTitle)
                .bold()
            Text ("Count is: \(count)")
                .font(.system(size: 25))
                .italic()
            
            HStack {
                Button("-") {
                    count -= 1
                }
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .tint(.red)
                
                Button("+"){
                    count += 1
                }
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .tint(.green)
            }
            
            .padding()
            
            Button("Reset"){
                count = 0
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
