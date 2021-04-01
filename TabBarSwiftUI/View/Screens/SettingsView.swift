//
//  FifthScreen.swift
//  TabBarSwiftUI
//
//  Created by Bo LeGrand on 4/1/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Fifth Screen")
            }
            .navigationTitle("Settings")
            
        }    }
}

struct FifthScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
