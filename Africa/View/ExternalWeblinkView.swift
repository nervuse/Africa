//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by elena on 29.06.2022.
//

import SwiftUI

struct ExternalWeblinkView: View {

    let animal: Animal

    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Википедия")
                Spacer()

                Group {
                    Image(systemName: "arrow.up.right.square")

                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://ru.wikipedia.org")!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
