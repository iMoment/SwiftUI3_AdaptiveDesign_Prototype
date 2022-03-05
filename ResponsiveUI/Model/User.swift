//
//  User.swift
//  ResponsiveUI
//
//  Created by Stanley Pan on 2022/03/04.
//

import SwiftUI

// MARK: User Model and Sample Data
struct User: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var image: String
    var title: String
}

var users: [User] = [
    User(name: "Homer", image: "user01", title: "Hi, my name is Homer."),
    User(name: "Bart", image: "user02", title: "Hi, my name is Bart."),
    User(name: "Lisa", image: "user03", title: "Hi, my name is Lisa."),
    User(name: "Maggie", image: "user04", title: "Hi, my name is Maggie."),
]
