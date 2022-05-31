//
//  ProfileModel.swift
//  Hardening
//
//  Created by MAC on 21.05.2022.
//

import Foundation

struct ProfileModel {
    var name: String
    var city: String
    var age: String
}

extension ProfileModel {
    
    static var data = ProfileModel(name: "Укажите имя",
                                   city: "Укажите город",
                                   age: "Укажите возраст")
}
