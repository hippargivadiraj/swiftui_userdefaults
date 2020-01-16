//
//  SettingsViewModel.swift
//  UserDefaultExample
//
//  Created by Vadiraj Hippargi on 1/15/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import Foundation
class SettingsViewModel : ObservableObject {
    @Published var isOn:Bool = UserDefaults.standard.bool(forKey: "isOn") {
        didSet {
            UserDefaults.standard.set(self.isOn, forKey: "isOn")
        }
        
    }
    
}
