//
//  ContentView.swift
//  NavigationTestProject
//
//  Created by Sunny Singh on 30.06.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Int = 1
    
    var body: some View {
        TabView (selection: $selection) {
            
            FirstTabView()
                .tabItem { Text("First") }
                .tag(1)
            
            SecondTabView()
                .tabItem { Text("Second") }
                .tag(2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
