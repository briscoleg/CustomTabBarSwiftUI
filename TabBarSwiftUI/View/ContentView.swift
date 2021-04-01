//
//  ContentView.swift
//  TabBarSwiftUI
//
//  Created by Bo LeGrand on 3/29/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    @State var presented = false
    
    let tabBarData = TabItem()
    
    var body: some View {
        VStack {
            ZStack {
                Spacer().fullScreenCover(isPresented: $presented, content: {
                    DismissButton(isSet: $presented)
                })
                switch selectedIndex {
                case 0:
                    HomeView()
                case 1:
                    ChatView()
                case 2:
                    AddView()
                case 3:
                    CalendarView()
                case 4:
                    SettingsView()
                default:
                    fatalError()
                }
                
            }
            Divider()
            HStack {
                ForEach(0..<5, id: \.self) { number in
                    Spacer()
                    Button(action: {
                        if number == 2 {
                            presented.toggle()
                        } else {
                            selectedIndex = number
                        }
                    }, label: {
                        if number == 2 {
                            Image(systemName: tabBarData.iconNames[number])
                                .font(.system(size: 25, weight: .regular, design: .default))
                                .foregroundColor(Color(.white))
                                .frame(width: 60, height: 60)
                                .background(Color(.blue))
                                .cornerRadius(30)
                            
                        } else {
                            Image(systemName: tabBarData.iconNames[number])
                                .foregroundColor(selectedIndex == number ? Color(.label) : Color(UIColor.lightGray))
                                .font(.system(
                                        size: 25,
                                        weight: .regular,
                                        design: .default))
                        }
                        
                    })
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
