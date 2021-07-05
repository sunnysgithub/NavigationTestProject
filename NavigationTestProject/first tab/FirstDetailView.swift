//
//  FirstDetailView.swift
//  NavigationTestProject
//

import SwiftUI

struct FirstDetailView: View {
    
    let items: [String] = ["😀", "🥲", "🤪", "🥳"]
    
//    @State private var selectedItem: String? = nil
    
    @EnvironmentObject private var stateManager: StateManager
    
    var body: some View {
        List(items, id: \.self) { item in
            
            NavigationLink(
                destination: EmojiView(item: item, selectedEmoji: $stateManager.selectedItem),
                tag: item,
                selection: $stateManager.selectedItem,
                label: {Text(item)})
            
        }
        .navigationTitle("First detail view")
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FirstDetailView()
                .environmentObject(StateManager())
        }
        
    }
}
