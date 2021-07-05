//
//  NavigationTestProjectApp.swift
//  NavigationTestProject
//

import SwiftUI

@main
struct NavigationTestProjectApp: App {
    
    @StateObject var stateManager = StateManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(stateManager)
        }
    }
}
