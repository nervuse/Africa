//
//  AnimalDetailView.swift
//  Africa
//
//  Created by elena on 29.06.2022.
//

import SwiftUI

struct AnimalDetailView: View {

    let animal: Animal

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()

                // TITLE
                Text(animal.name.uppercased())
                    .font(.title2)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )

                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)

                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Пустыня в картинках")

                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)

                // FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Вы знали?")

                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)

                // DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "Все о \(animal.inflectedName)")

                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)

                // MAP
                Group {
                    HeadingView(headingImage: "map", headingText: "Национальные парки")

                    InsetMapView()
                }
                .padding(.horizontal)

                // LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Узнать больше")

                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Узнать о \(animal.inflectedName)", displayMode: .inline)
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}
