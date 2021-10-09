//
//  ContentView.swift
//  Localization
//
//  Created by Danh Tu on 09/10/2021.
//

import SwiftUI

struct ContentView: View {
    let helloWorld: LocalizedStringKey = "hello_world"
    let hey: LocalizedStringKey = "hey"
    
    var body: some View {
        VStack {
            Text(hey)
            Text(helloWorld)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
