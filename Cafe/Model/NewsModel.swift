//
//  NewsModel.swift
//  Cafe
//
//  Created by Hanna Kovbasiuk on 02.04.2024.
//
import Foundation
import SwiftUI


struct NewsModel:Hashable, Codable,Identifiable{
    var id: Int
    var name: String
    var text: String
    var imageName: String
       
}
