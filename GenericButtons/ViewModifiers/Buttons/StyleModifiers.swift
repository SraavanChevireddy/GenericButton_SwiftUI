//
//  StyleModifiers.swift
//  GenericButtons
//
//  Created by Sraavan Chevireddy on 7/20/22.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    
    /// AppTheme color will be applied by default. Feel free to override this whenever needed.
    var tintColor : Color = .accentColor
    var type: buttonType
    
    /// Default padding is applied as `small`. For more options you can play around with `margin` properties.
    var marginPadding : margin = .small
    
    /// Foreground Color applied to button will be based on the `buttonType` you choose. For `primaryButton` the foreground Color remains as white. And for `secondary` and `teritary`,  `tintColor` will be applied to foreground.
    var foregroundColor: Color = .white
    var style: Font.TextStyle = .body
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("Roboto, Medium", size: bth_fontSize))
            .padding(.leading, marginPadding.rawValue)
            .padding(.trailing, marginPadding.rawValue)
            .frame(height: bth_height)
            .background(appliedTint)
            .foregroundColor(appliedForeground)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
            .overlay(
                appliedOverlay
            )
    }
    
    private var appliedTint : Color{
        if type == .primary{
            return tintColor
        }else{
            return .clear
        }
    }
    
    private var bth_height : CGFloat{
        if marginPadding == .small{
            return 24.0
        }else if marginPadding == .medium{
            return 38.0
        }else{
            return 54.0
        }
    }
    
    private var bth_fontSize : CGFloat{
        if marginPadding == .small{
            return 12
        }else if marginPadding == .medium{
            return 13
        }else{
            return 17
        }
    }
    private var appliedForeground : Color{
        if type == .primary{
            return foregroundColor
        }else{
            return tintColor
        }
    }
    
    private var appliedOverlay : some View{
        Group{
            if type == .secondary{
                Capsule(style: .continuous)
                    .strokeBorder(appliedForeground, lineWidth: 1)
            }else{
                EmptyView()
            }
        }
    }
}


