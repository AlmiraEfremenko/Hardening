//
//  Model.swift
//  Hardening
//
//  Created by MAC on 19.04.2022.
//

import Foundation

struct Model {
    var titleLarge: String
    var titleInCardLeft: String
    var textAboutCostLeft: String
    var textAboutRateLeft: String
    var textCommentAboutSubscription: String
    var textAboutSubscription: String
}

extension Model {
    
    static var data = Model(titleLarge: "Выбери подписку и попробуй 7 дней без оплаты",
                            titleInCardLeft: "1 месяц",
                            textAboutCostLeft: "379 руб. в месяц",
                            textAboutRateLeft: "Ежемесячная оплата, первые 7 дней без оплаты",
                            textCommentAboutSubscription: "Отписаться можно в любой момент",
                            textAboutSubscription: "Восстановить подписку или Войти")
}
