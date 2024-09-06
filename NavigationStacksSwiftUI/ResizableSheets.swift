//
//  ResizableSheets.swift
//  NavigationStacksSwiftUI
//
//  Created by Manyuchi, Carrington C on 2024/09/06.
//

import SwiftUI

struct ResizableSheets: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        Button("Click Me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MyNextView()
                .presentationDetents([.fraction(0.33)])
                .presentationDragIndicator(.hidden)
                .interactiveDismissDisabled()
        })
    }
}

#Preview {
    ResizableSheets()
}
 
struct MyNextView: View {
    var body: some View {
        Text("Helloe, I am a sheet")
    }
}
