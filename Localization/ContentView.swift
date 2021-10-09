//
//  ContentView.swift
//  Localization
//
//  Created by Danh Tu on 09/10/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isExpanded = false
    @State private var identifier = "en"
    @State private var languageSelected = "English"
    
    let languages = ["en": "English", "ja": "Japanese"]
    
    let helloWorld: LocalizedStringKey = "hello_world"
    let hey: LocalizedStringKey = "hey"
    
    var body: some View {
        VStack {
            Text(hey)
            Text(helloWorld)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Languages")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                DisclosureGroup(languageSelected, isExpanded: $isExpanded) {
                    VStack {
                        let keys = languages.map{$0.key}
                        let values = languages.map{$0.value}
                        ForEach(keys.indices) { index in
                            Button(action: {
                                identifier = keys[index]
                                languageSelected = values[index]
                                withAnimation(.easeInOut) {
                                    isExpanded.toggle()
                                }
                            }, label: {
                                Text(values[index])
                                    .padding()
                            })
                        }
                    }
                }
                .accentColor(.white)
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .environment(\.locale, .init(identifier: identifier))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
