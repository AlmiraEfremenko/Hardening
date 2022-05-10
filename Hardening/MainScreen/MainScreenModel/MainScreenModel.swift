//
//  Model.swift
//  Hardening
//
//  Created by MAC on 19.04.2022.
//

import Foundation

struct MainScreenModel {
    var titleLarge: String
    var titleInCardLeft: String
    var titleInCardRight: String
    var textAboutCostLeft: String
    var textAboutCostRight: String
    var textAboutRateLeft: String
    var textAboutRateRight: String
    var textCommentAboutSubscription: String
}

extension MainScreenModel {
    
    static var data = MainScreenModel(titleLarge: "Выбери подписку и попробуй 7 дней без оплаты",
                                      titleInCardLeft: "1 месяц",
                                      titleInCardRight: "6 месяцeв",
                                      textAboutCostLeft: "379 руб. в месяц",
                                      textAboutCostRight: "1050 руб. в месяц",
                                      textAboutRateLeft: "Ежемесячная оплата, первые 7 дней без оплаты",
                                      textAboutRateRight: "Ежемесячная оплата, первые 7 дней без оплаты",
                                      textCommentAboutSubscription: "Отписаться можно в любой момент")
}
