//
//  MyFriends.swift
//  VKApp
//
//  Created by Valerie Solovyova on 21.10.2020.
//  Copyright © 2020 Valerie Solovyova. All rights reserved.
//

import Foundation

struct MyFriend {
    var name: String
    var avatar: String
    var photos: [String]
    
    static var randomOne: MyFriend {
        return MyFriend(name: Lorem.fullName,
                    avatar: String(Int.random(in: 1...5)),
                    photos: (1...5).map { _ in String(Int.random(in: 1...5)) }
        )
    }
    
    static var randomMany: [MyFriend] {
        return (1...5).map { _ in MyFriend.randomOne }
    }
}
