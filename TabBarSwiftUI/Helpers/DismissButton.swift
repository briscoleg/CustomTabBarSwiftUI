//
//  DismissButton.swift
//  TabBarSwiftUI
//
//  Created by Bo LeGrand on 4/1/21.
//

import SwiftUI

struct DismissButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            Text("Dismiss")
                .frame(width: 200, height: 50)
                .background(Color.pink)
                .foregroundColor(.white)
                .cornerRadius(15)
        })    }
}

struct DismissButton_Previews: PreviewProvider {
    static var previews: some View {
        DismissButton(isSet: .constant(false))
    }
}
