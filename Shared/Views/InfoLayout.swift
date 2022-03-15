//
//  InfoLayout.swift
//  SwiftUIDemo
//
//  Created by Hai Doan on 14/03/2022.
//

import Foundation
import UIKit
import SUIiOSLibrary
import SwiftUI

class InfoLayout {
    class func layout() -> [CCInfoGraphicComponent] {
        var components = [CCInfoGraphicComponent]()
        
        components.append(.fullWidthImage(imageName: "info.header"))
        components.append(.separator(appearance: SUISeparatorAppearance()))
        components.append(.paddedImage(imageName: "info.stamp.feature1",
                                       padding: SUIPadding(top: 10, bottom: 10, leading: 10, trailing: 10)))
        components.append(.separator(appearance: SUISeparatorAppearance()))
        components.append(.paddedImage(imageName: "info.stamp.feature3",
                                       padding: SUIPadding(top: 10, bottom: 10, leading: 10, trailing: 10)))
        components.append(.separator(appearance: SUISeparatorAppearance()))
        components.append(.paddedImage(imageName: "info.stamp.feature4",
                                       padding: SUIPadding(top: 10, bottom: 10, leading: 10, trailing: 10)))
        components.append(.separator(appearance: SUISeparatorAppearance()))
        components.append(.paddedMutilImage(imageNames: ["info.stamp.feature5", "info.stamp.feature6"], padding: SUIPadding(top: 10, bottom: 10, leading: 10, trailing: 10), widthSize: 150))
        components.append(.separator(appearance: SUISeparatorAppearance()))
        components.append(.paddedMutilImage(imageNames: ["info.stamp.feature7"],
                                            padding: SUIPadding(top: 10, bottom: 10, leading: 10, trailing: 10), widthSize: 200))
        return components
    }
}


