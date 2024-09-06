//
//  SafeAreaInsetss.swift
//  NavigationStacksSwiftUI
//
//  Created by Manyuchi, Carrington C on 2024/09/06.
//

import SwiftUI

struct SafeAreaInsetss: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay {
//                Text("Hi")
//                    .background(Color.yellow)
//                   
//            }
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    //.padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.ignoresSafeArea(edges: .bottom))
                   // .clipShape(Circle())
                   // .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetss()
}
