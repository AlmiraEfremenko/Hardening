//
//  ThirdStageMarkModel.swift
//  Hardening
//
//  Created by MAC on 31.05.2022.
//

import Foundation

struct ThirdStageMarkModel {
    var title: String
    var textButton: (one: String,
                     two: String,
                     three: String,
                     four: String,
                     five: String,
                     six: String,
                     seven: String,
                     eight: String,
                     nine: String,
                     ten: String,
                     eleven: String,
                     twelve: String,
                     thirteen: String,
                     fourteen: String)
}

extension ThirdStageMarkModel {
    
    static var data = ThirdStageMarkModel(title: "Сделай отметку третьего этапа закаливания",
                                          textButton: (one: "1",
                                                       two: "2",
                                                       three: "3",
                                                       four: "4",
                                                       five: "5",
                                                       six: "6",
                                                       seven: "7",
                                                       eight: "8",
                                                       nine: "9",
                                                       ten: "10",
                                                       eleven: "11",
                                                       twelve: "12",
                                                       thirteen: "13",
                                                       fourteen: "14"))
}
