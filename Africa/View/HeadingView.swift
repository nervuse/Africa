//
//  HeadingView.swift
//  Africa
//
//  Created by elena on 29.06.2022.
//

import SwiftUI

struct HeadingView: View {

    var headingImage: String
    var headingText: String

    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Пустыня в картинках")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
