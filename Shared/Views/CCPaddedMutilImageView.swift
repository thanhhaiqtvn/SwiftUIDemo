//
//  CCPaddedMutilImageView.swift
//  SwiftUIDemo
//
//  Created by Hai Doan on 14/03/2022.
//

import SwiftUI
import SUIiOSLibrary

public struct CCPaddedMutilImageView: View {
    let imageNames: [String]
    let padding: SUIPadding
    let widthSize: CGFloat?
    
    public init(imageNames: [String],
                padding: SUIPadding,
                widthSize: CGFloat? = nil) {
        self.imageNames = imageNames
        self.padding = padding
        self.widthSize = widthSize
    }
    
    public var body: some View {
        HStack(alignment: .top) {
            ForEach(imageNames, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, padding.top)
                    .padding(.bottom, padding.bottom)
                    .padding(.leading, padding.leading)
                    .padding(.trailing, padding.trailing)
                    .frame(width: widthSize)
            }
        }
    }
}

