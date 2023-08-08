//
//  TabMainViewView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 02/08/23.
//

import SwiftUI

struct TabMainView: View {
    var body: some View {
        TabView{
            Text("Feed")
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Notification")
                .tabItem {
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }

        }.accentColor(.black)
    }
}

struct TabMainViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabMainView()
    }
}
