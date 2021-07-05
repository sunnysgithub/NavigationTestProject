//
//  ContentView.swift
//  NavigationTestProject
//

import SwiftUI

struct ContentView: View {
    
//    @State private var selection: Int = 1
    
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        TabView (selection: $stateManager.selection) {
            
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
            .environmentObject(StateManager())
    }
}
