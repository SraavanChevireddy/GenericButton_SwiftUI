//
//  PrimaryView.swift
//  GenericButtons
//
//  Created by Apple on 02/08/22.
//

import SwiftUI

struct PrimaryView: View {
    var title : String
    var body: some View {
        Button {
            print("You tapped on primary button")
        } label: {
            Text(title)
        }.buttonStyle(CustomButtonStyle(type: .primary, marginPadding:.large))
           
    }
}
