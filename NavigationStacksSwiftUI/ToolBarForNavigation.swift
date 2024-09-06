//
//  ToolBarForNavigation.swift
//  NavigationStacksSwiftUI
//
//  Created by Manyuchi, Carrington C on 2024/09/06.
//

import SwiftUI

struct ToolBarForNavigation: View {
    var body: some View {
      
        NavigationStack {
            ZStack {
                
                Color.indigo.ignoresSafeArea()
                ScrollView {
                    Text("Hey 🚖")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                }
                .navigationTitle("Navigation ToolBar!!!")
                //                .navigationBarItems(
                //                    leading: Image(systemName: "heart.fill")
                //                        .foregroundStyle(.white)
                //                    ,
                //                    trailing: Image(systemName: "gear")
                //                        .foregroundStyle(.white)
                //
                //                )
                .toolbar(content: {
                    ToolbarItem(id: "", placement: .topBarLeading) {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.white)
                    }
                    ToolbarItem(id: "", placement: .topBarTrailing) {
                        Image(systemName: "gear")
                            .foregroundStyle(.white)
                    }
                })
               // .toolbarColorScheme(.dark, for: .navigationBar)
                .toolbarTitleDisplayMode(.inline)
                .toolbarTitleMenu {
                    Button("Screen 1") {
                        
                    }
                    
                    Button("Screen 2") {
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ToolBarForNavigation()
}
