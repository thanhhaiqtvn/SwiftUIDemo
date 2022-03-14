//
//  CCSeparatorView.swift
//  SwiftUIDemo
//
//  Created by Hai Doan on 14/03/2022.
//

import SwiftUI
import SUIiOSLibrary

public struct CCSeparatorView: View {
    let appearance: SUISeparatorAppearance
    
    public init(appearance: SUISeparatorAppearance) {
        self.appearance = appearance
    }
    
    public var body: some View {
        SUISeparator()
            .modifier(appearance)
    }
}

