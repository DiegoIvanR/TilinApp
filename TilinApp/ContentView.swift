//
//  ContentView.swift
//  TilinApp
//
//  Created by gdaalumno on 05/12/23.
//

import SwiftUI
//tmb se puede crear una instancia de UIelements en content view, y content view en tilinApp
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Eso Tilin")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
