//
//  EmojiView.swift
//  NavigationTestProject
//

import SwiftUI

struct EmojiView: View {

    @EnvironmentObject private var stateManager: StateManager
    
    let item: String
    
    var body: some View {
        
        VStack (spacing: 30) {
            Text(item)
                .font(.system(size: 120))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.white , .blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom
                    )
            )
            
            Button(action: {
                
            }, label: {
                Text("Go Back To Root")
            })
            
            Button(action: {
//                presentationMode.wrappedValue.dismiss()
                stateManager.selectedItem = nil
            }, label: {
                Text("Go Back")
            })
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(item: "⚡️", selectedEmoji: .constant(""))
    }
}
