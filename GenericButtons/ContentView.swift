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
            Button {
                print("You tapped on primary button")
            } label: {
                Text("Primary Button")
            }.buttonStyle(CustomButtonStyle(type: .primary))
                .padding(margin.small.rawValue)
            
            Button {
                print("You tapped on Secondary button")
            } label: {
                Text("Secondary Button")
            }.buttonStyle(CustomButtonStyle(tintColor: .green, type: .secondary))
                .padding(margin.large.rawValue)
            
            Button {
                print("You tapped on Teritary button")
            } label: {
                Text("Teritary Button")
            }.buttonStyle(CustomButtonStyle(tintColor: .yellow, type: .teritary, style: .title3))
                .padding(margin.medium.rawValue)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
