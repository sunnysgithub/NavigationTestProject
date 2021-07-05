//
//  FirstTabView.swift
//  NavigationTestProject
//

import SwiftUI

struct FirstTabView: View {
    
//    @State private var firstDetailIsShown: Bool = false
    
    @EnvironmentObject private var stateManager: StateManager
    
    var body: some View {
        NavigationView {
            VStack {
                Text("First Tab View")
                
                NavigationLink(
                    destination: FirstDetailView(),
                    isActive: $stateManager.firstDetailIsShown,
                    label: {
                        Text("Go To Detail")
                    }
                )
                
//                NavigationLink("Go To Details", destination: FirstDetailView())
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
            .environmentObject(StateManager())
    }
}
