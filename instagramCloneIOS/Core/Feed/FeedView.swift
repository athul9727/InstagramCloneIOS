//
//  FeedView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 09/08/23.
//

import SwiftUI

struct FeedView: View {
    let post:Post
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack(spacing:32){
                    
                    ForEach(Post.MOCK_POSTS){ post in
                        FeedCellView(post: post)
                    }
                    
                }
                .padding(.top,8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement:.navigationBarLeading){
                    Image("instagram_logo_black")
                        .resizable().frame(width:100,height: 32)
                    
                }
                ToolbarItem(placement:.navigationBarTrailing){
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                    
                }
                
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(post: Post.MOCK_POSTS[0])
    }
}
