//
//  User.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 15/08/23.
//

import Foundation

struct User: Identifiable,Hashable, Codable{
    
    let id: String
    var username:String
    var profileImageUrl:String?
    var fullname: String?
    var bio:String?
    let email:String
    
    
}

extension User{
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman", fullname: "Bruce wayne",bio: "i m batman", email: "batman123@gmail.com"),
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman", fullname: "Bruce wayne",bio: "i m batman", email: "batman123@gmail.com"),
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman", fullname: "Bruce wayne",bio: "i m batman", email: "batman123@gmail.com"),
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman", fullname: "Bruce wayne",bio: "i m batman", email: "batman123@gmail.com"),
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman", fullname: "Bruce wayne",bio: "i m batman", email: "batman123@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "img4", fullname: "Tony stark",bio: "i m ironman", email: "ironman123@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "img4", fullname: "Tony stark",bio: "i m ironman", email: "ironman123@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "img4", fullname: nil,bio: "i m ironman", email: "ironman123@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "img4", fullname: "Tony stark",bio: "i m ironman", email: "ironman123@gmail.com"),
      
    ]
}
