//
//  ContentView.swift
//  NavigationStacksSwiftUI
//
//  Created by Manyuchi, Carrington C on 2024/09/06.
//

import SwiftUI

struct ContentView: View {
    
    let fruits = ["Apple", "Banana", "orange"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 40, content: {
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me \(x)")
                        }
                    }
                })
            }
            .navigationTitle("Navigation Stacks")
            .navigationDestination(for: Int.self) { value in
                ScreenTwo(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("Another screen: \(value)")
            }
        }
    }
}

#Preview {
    ContentView()
}



struct ScreenTwo: View {
    let value: Int
    
    var body: some View {
        VStack {
            Text("This is screen \(value)")
        }
    }
}
