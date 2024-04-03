//
//  UserModel.swift
//  Cafe
//
//  Created by Hanna Kovbasiuk on 03.04.2024.
//


import Foundation

struct UserModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var password: String
    var photo: String
    var percent: Int
    var bonuses: Int
}
