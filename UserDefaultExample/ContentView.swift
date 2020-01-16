//
//  ContentView.swift
//  UserDefaultExample
//
//  Created by Vadiraj Hippargi on 1/15/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var settingsVM = SettingsViewModel()
    
    var body: some View {
        VStack{
            Toggle(isOn:  self.$settingsVM.isOn) {
                Text("")
            }.fixedSize()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity )
                .background(self.$settingsVM.isOn.wrappedValue ? Color.green : Color.red)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
