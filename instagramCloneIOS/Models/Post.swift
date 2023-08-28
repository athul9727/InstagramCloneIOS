//
//  Post.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 19/08/23.
//

import Foundation

struct Post: Identifiable,Hashable,Codable{
    
    let id:String
    let ownerid:String
    let caption:String
    let likes:Int
    let imageUrl:String
    let timestamp:Date
    var user:User?
    
    
}

extension Post{
    static var MOCK_POSTS:[Post] = [
        
        .init(
            id: NSUUID().uuidString,
            ownerid: NSUUID().uuidString,
            caption: "i m batman",
            likes: 101,
            imageUrl: "batman",
            timestamp: Date(),
            user:User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerid: NSUUID().uuidString,
            caption: "i m batman",
            likes: 101,
            imageUrl: "batman",
            timestamp: Date(),
            user:User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerid: NSUUID().uuidString,
            caption: "i m batman",
            likes: 101,
            imageUrl: "batman",
            timestamp: Date()
        ),
        .init(
            id: NSUUID().uuidString,
            ownerid: NSUUID().uuidString,
            caption: "i m batman",
            likes: 101,
            imageUrl: "batman",
            timestamp: Date(),
            user:User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerid: NSUUID().uuidString,
            caption: "i m batman",
            likes: 101,
            imageUrl: "batman",
            timestamp: Date(),
            user:User.MOCK_USERS[1]
        )
    ]
        
}
