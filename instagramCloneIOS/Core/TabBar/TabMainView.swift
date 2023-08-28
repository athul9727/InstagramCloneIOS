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
            FeedView(post: Post.MOCK_POSTS[0])
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
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
            CurrentUserProfileView(user: User.MOCK_USERS[0])
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
