//
//  EmojiView.swift
//  NavigationTestProject
//
//  Created by Sunny Singh on 30.06.21.
//

import SwiftUI

struct EmojiView: View {
    
    let item: String
    
    @Environment(\.presentationMode) var presentationMode
    
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
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Go Back")
            })
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(item: "⚡️")
    }
}
