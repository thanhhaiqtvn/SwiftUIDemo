//
//  CCInfoGraphicComponent.swift
//  SwiftUIDemo
//
//  Created by Hai Doan on 14/03/2022.
//

import SUIiOSLibrary
import UIKit
import SwiftUI

/// Info graphics components
public enum CCInfoGraphicComponent {
    case separator(appearance: SUISeparatorAppearance)
    case fullWidthImage(imageName: String)
    case paddedImage(imageName: String, padding: SUIPadding)
    case paddedMutilImage(imageNames: [String], padding: SUIPadding, widthSize: CGFloat? = nil)
}

public enum CCInfoGraphicActionButton: String {
    case terms
    case report
    case checkbox
}

// TODO: Move UIKit components to different class
public enum CCInfoGraphicComponentFont {
    case regular(size: CGFloat)
    case bold(size: CGFloat)
    
    func font() -> UIFont {
        switch self {
        case .regular(let size):
            return UIFont.systemFont(ofSize: size)
        case .bold(let size):
            return UIFont.boldSystemFont(ofSize: size)
        }
    }
}

public typealias CCInfoGraphicComponentAlignment = NSTextAlignment

