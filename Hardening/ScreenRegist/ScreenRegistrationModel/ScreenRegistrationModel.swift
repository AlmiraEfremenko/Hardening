//
//  ScreenRegistrationModel.swift
//  Hardening
//
//  Created by MAC on 10.05.2022.
//

import Foundation

struct ScreenRegistrationModel {
    var registration: String
    var textPersonalData: String
    var logInSocialNetwork: String
    var haveAnAccount: String
}

extension ScreenRegistrationModel {
    
    static var data = ScreenRegistrationModel(registration: "Регистрация",
                                              textPersonalData: "Оставляя свои данные вы соглашаетесь с политикой конфиденциальности",
                                              logInSocialNetwork: "Или войдите через",
                                              haveAnAccount: "У вас уже есть аккаунт?")}
