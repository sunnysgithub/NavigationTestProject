//
//  StateManager.swift
//  NavigationTestProject
//

import Foundation
import Combine

class StateManager: ObservableObject {
    
    @Published var selection: Int = 1
    
    @Published var firstDetailIsShown: Bool = false
    
    @Published var selectedItem: String? = nil
    
    @Published var isPresentingOverlay: Bool = false
    
    var subscriptions = Set<AnyCancellable>()
    
    init() {
        $firstDetailIsShown
            .filter({!$0})
            .removeDuplicates()
            .sink{[unowned self] value in
                self.selectedItem = nil
            }.store(in: &subscriptions)
    } 
    
}
