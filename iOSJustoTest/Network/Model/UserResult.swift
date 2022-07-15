//
//  User.swift
//  iOSJustoTest
//
//  Created by Alan Muñoz on 14/07/22.
//

import Foundation

// MARK: - User
struct UserResult: Codable {
    var results: [User]?
}

// MARK: - Result
struct User: Codable {
    var gender: String?
    var name: Name?
    var phone, cell: String?
    var picture: Picture?
}


// MARK: - Name
struct Name: Codable {
    var title, first, last: String?
}

// MARK: - Picture
struct Picture: Codable {
    var large, medium, thumbnail: String?
}
