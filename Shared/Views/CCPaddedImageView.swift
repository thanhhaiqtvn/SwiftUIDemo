//
//  CCPaddedImageView.swift
//  SwiftUIDemo
//
//  Created by Hai Doan on 14/03/2022.
//

import SwiftUI
import SUIiOSLibrary

public struct CCPaddedImageView: View {
    let imageNames: [String]
    let padding: SUIPadding
    let widthSize: CGFloat?
    let alignment: Alignment
    
    public init(imageNames: [String],
                padding: SUIPadding,
                widthSize: CGFloat? = nil,
                alignment: Alignment = .top) {
        self.imageNames = imageNames
        self.padding = padding
        self.widthSize = widthSize
        self.alignment = alignment
    }
    
    public var body: some View {
        HStack {
            ForEach(imageNames, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, padding.top)
                    .padding(.bottom, padding.bottom)
                    .padding(.leading, padding.leading)
                    .padding(.trailing, padding.trailing)
                    .frame(width: widthSize, alignment: alignment)
            }
        }.frame(height: .infinity, alignment: .top)
    }
}

