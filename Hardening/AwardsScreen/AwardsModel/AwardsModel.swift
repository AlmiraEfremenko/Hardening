//
//  AwardsModel.swift
//  Hardening
//
//  Created by MAC on 23.05.2022.
//

import Foundation

struct AwardsModel {
    var title: String
    var textStage: (one: String,
                    two: String,
                    three: String)
    var textCount: (one: String,
                    two: String,
                    three: String)
}

extension AwardsModel {
    
    static var data = AwardsModel(title: "Твои награды🎉",
                                  textStage: (one: "1 этап", two: "2 этап", three: "3 этап"),
                                  textCount: (one: "0", two: "0", three: "0"))
}
