//
//  PostGridView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 19/08/23.
//

import SwiftUI

struct PostGridView: View {
    
    var posts:[Post]
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width/3)-1

    
    private let gridItems: [GridItem] = [
        
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
       
             ]
    
    var body: some View {
        LazyVGrid(columns: gridItems,spacing:1)
        {
        
        ForEach(posts){ myPost in
            Image(myPost.imageUrl)
                .resizable().scaledToFill()
                .frame(width: imageDimension,height: imageDimension)
                .clipped()
        }
    
    
           
        
       }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(posts: Post.MOCK_POSTS)
    }
}
