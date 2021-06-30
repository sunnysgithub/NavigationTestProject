//
//  FirstTabView.swift
//  NavigationTestProject
//
//  Created by Sunny Singh on 30.06.21.
//

import SwiftUI

struct FirstTabView: View {
    
    @State private var firstDetailIsShown: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("First Tab View")
                
                NavigationLink(
                    destination: FirstDetailView(),
                    isActive: $firstDetailIsShown,
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
    }
}
