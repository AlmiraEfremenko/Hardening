//
//  ScreenGreetingsModel.swift
//  Hardening
//
//  Created by MAC on 10.05.2022.
//

import Foundation

struct ScreenGreetingsModel {
    var labelGreetings: String
    var questionsAboutHealth: String
    var idont: String
    var textAboutHealthHeart: String
    var textAboutHealth: String
}

extension ScreenGreetingsModel {
    
    static var data = ScreenGreetingsModel(labelGreetings: "Привет,",
                                           questionsAboutHealth: "Здесь ты познаешь методику закаливания, но перед началом ответь на вопросы",
                                           idont: "Я не:",
                                           textAboutHealthHeart: "Болею сердечно-сосудистыми заболеваниями",
                                           textAboutHealth: "Болел в течении 3-х недель")
}
