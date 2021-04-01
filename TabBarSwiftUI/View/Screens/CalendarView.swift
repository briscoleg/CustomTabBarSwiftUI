//
//  FourthScreen.swift
//  TabBarSwiftUI
//
//  Created by Bo LeGrand on 4/1/21.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Fourth Screen")
            }
            .navigationTitle("Calendar")
            
        }    }
}

struct FourthScreen_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
