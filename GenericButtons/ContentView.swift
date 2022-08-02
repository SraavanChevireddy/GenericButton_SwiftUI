//
//  ContentView.swift
//  GenericButtons
//
//  Created by Sraavan Chevireddy on 7/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: margin.large.rawValue){
            DefaultView(title: "Default")
            PrimaryView(title: "Primary")
            SecondaryView(title: "Secondary")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
