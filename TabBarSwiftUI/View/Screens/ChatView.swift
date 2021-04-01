//
//  SecondScreen.swift
//  TabBarSwiftUI
//
//  Created by Bo LeGrand on 4/1/21.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Second Screen")
            }
            .navigationTitle("Chat")

        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
