//
//  FirstScreen.swift
//  TabBarSwiftUI
//
//  Created by Bo LeGrand on 4/1/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("First Screen")
            }
            .navigationTitle("Home")
        }
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
