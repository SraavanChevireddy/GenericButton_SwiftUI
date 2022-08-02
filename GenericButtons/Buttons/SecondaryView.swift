//
//  SecondaryView.swift
//  GenericButtons
//
//  Created by Apple on 02/08/22.
//

import SwiftUI

struct SecondaryView: View {
    var title : String

    var body: some View {
        Button {
            print("You tapped on primary button")
        } label: {
            Text(title)
        }.buttonStyle(CustomButtonStyle(type: .secondary, marginPadding:.medium))
            //.padding(margin.small.rawValue)
    }
}

