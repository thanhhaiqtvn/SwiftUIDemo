//
//  ContentView.swift
//  Shared
//
//  Created by Hai Doan on 14/03/2022.
//

import SwiftUI
import SUIiOSLibrary

let infoLayout = InfoLayout.layout()

struct ContentView: View {
    var body: some View {
        return ScrollView {
            if #available(iOS 14.0, *) {
                LazyVStack(alignment: .leading) {
                    ForEach(Array(infoLayout.enumerated()), id: \.offset) { _, component in
                        self.view(for: component)
                            .padding(.bottom, 10)
                            .padding(.horizontal, 16)
                    }
                }
                .padding(.top, 15)
            } else {
                ZStack {
                    List {
                        ForEach(Array(infoLayout.enumerated()), id: \.offset) { _, component in
                            self.view(for: component)
                                .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                                .padding(.bottom, 15)
                        }
                    }
                }
            }
        }
    }
    
    func view2() -> some View {
        return AnyView(CCPaddedImageView(imageName: "info.header",
                                         padding: SUIPadding(leading: -20, trailing: -20)))
    }
    
    func view(for component: CCInfoGraphicComponent) -> some View {
        switch component {
        case .separator(let appearance):
            return AnyView(CCSeparatorView(appearance: appearance))
            
        case .fullWidthImage(let imageNames):
            return AnyView(CCPaddedImageView(imageName: imageNames, padding: SUIPadding(leading: -20, trailing: -20)))
            
        case .paddedImage(let imageName, let padding):
            return AnyView(CCPaddedImageView(imageName: imageName, padding: padding))
            
        case .paddedMutilImage(imageNames: let imageNames, padding: let padding, widthSize: let widthSize):
            return AnyView(CCPaddedMutilImageView(imageNames: imageNames, padding: padding, widthSize: widthSize))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

