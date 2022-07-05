//
//  MainView.swift
//  Africa
//
//  Created by elena on 28.06.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Просмотр")
                }

            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Смотреть")
                }

            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Локация")
                }

            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Галерея")
                }
        } //: TAB
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
