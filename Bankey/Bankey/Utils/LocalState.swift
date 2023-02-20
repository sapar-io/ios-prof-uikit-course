//
//  LocalState.swift
//  Bankey
//
//  Created by Sapar Jumabekov on 21.02.2023.
//

import Foundation

class LocalState {
    
    private enum Keys: String {
        case hasOnboarded
    }
    
    static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        }
        set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
}
