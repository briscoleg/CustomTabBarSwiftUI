//
//  ThirdScreen.swift
//  TabBarSwiftUI
//
//  Created by Bo LeGrand on 4/1/21.
//

import SwiftUI

struct AddView: View {
    @State var presented = false

    
    var body: some View {
        NavigationView {
            VStack {
                DismissButton(isSet: $presented)
            }
            .navigationTitle("Add")

        }
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
