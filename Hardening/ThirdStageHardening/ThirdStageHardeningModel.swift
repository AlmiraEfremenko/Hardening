//
//  ThirdStageHardeningModel.swift
//  Hardening
//
//  Created by MAC on 31.05.2022.
//

import Foundation

struct ThirdStageHardeningModel {
    var title: String
    var dousingWithWater: String
    var outdoorTreatments: String
    var snowRubdown: String
}

extension ThirdStageHardeningModel {
    
    static var data = ThirdStageHardeningModel(title: "Этап 3",
                                               dousingWithWater: "1. Обливание водой",
                                               outdoorTreatments: "2. Процедуры на свежем воздухе??????",
                                               snowRubdown: "3. Обтирание снегом")
}
