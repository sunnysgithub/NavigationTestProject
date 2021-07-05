//
//  SecondTabView.swift
//  NavigationTestProject
//

import SwiftUI

struct SecondTabView: View {
    
    @EnvironmentObject private var stateManager: StateManager
    
    var body: some View {
        VStack {
            Text("Second Tab View")
            
            Button(action: {
                stateManager.isPresentingOverlay.toggle()
            }, label: {
                VStack{
                    Text("Show Overlay")
                }
            })
            .fullScreenCover(
                isPresented: $stateManager.isPresentingOverlay,
                content: {
                    VStack {
                        Text("Test")
                        
                        Button(action: {
                            stateManager.isPresentingOverlay = false
                        }, label: {
                            VStack{
                                Text("done")
                            }
                        })
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.pink)
            })
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
            .environmentObject(StateManager())
    }
}
