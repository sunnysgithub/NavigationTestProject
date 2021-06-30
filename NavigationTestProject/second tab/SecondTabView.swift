//
//  SecondTabView.swift
//  NavigationTestProject
//
//  Created by Sunny Singh on 30.06.21.
//

import SwiftUI

struct SecondTabView: View {
    
    @State private var isPresentingOverlay: Bool = false
    
    var body: some View {
        VStack {
            Text("Second Tab View")
            
            Button(action: {
                isPresentingOverlay.toggle()
            }, label: {
                VStack{
                    Text("Show Overlay")
                }
            })
            .fullScreenCover(
                isPresented: $isPresentingOverlay,
                content: {
                    VStack {
                        Text("Test")
                        
                        Button(action: {
                            isPresentingOverlay = false
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
    }
}
