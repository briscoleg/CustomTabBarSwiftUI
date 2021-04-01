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
    
    let icons = [
        "house",
        "gear",
        "plus",
        "lasso",
        "message"
    ]
    
    var body: some View {
        VStack {
            //Content
            ZStack {
                
                Spacer().fullScreenCover(isPresented: $presented, content: {
                    Button(action: {
                        presented.toggle()
                    }, label: {
                        Text("Dismiss")
                            .frame(width: 200, height: 50)
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    })
                })

            switch selectedIndex {
            case 0:
                NavigationView {
                    VStack {
                        Text("First Screen")
                    }
                    .navigationTitle("Home")

                }
            case 1:
                NavigationView {
                    VStack {
                        Text("Second Screen")
                    }
                    .navigationTitle("Settings")

                }            case 2:
                    NavigationView {
                        VStack {
                            Text("Third Screen")
                        }
                        .navigationTitle("Add")

                    }            case 3:
                        NavigationView {
                            VStack {
                                Text("Fourth Screen")
                            }
                            .navigationTitle("Lasso")

                        }            default:
                            NavigationView {
                                VStack {
                                    Text("Fifth Screen")
                                }
                                .navigationTitle("Chat")

                            }
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
                            Image(systemName: icons[number])
                                .font(.system(size: 25, weight: .regular, design: .default))
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60)
                                .background(Color(.blue))
                                .cornerRadius(30)

                        } else {
                            Image(systemName: icons[number])
                                .foregroundColor(selectedIndex == number ? .black : Color(UIColor.lightGray))
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
