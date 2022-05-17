//
//  FirstStageHardeningModel.swift
//  Hardening
//
//  Created by MAC on 16.05.2022.
//

import Foundation

struct FirstStageHardeningModel {
    var title: String
    var walkBarefoot: String
    var sleepOpenWindow: String
    var washingColdWater: String
}

extension FirstStageHardeningModel {
    
    static var data = FirstStageHardeningModel(title: "Этап 1",
                                               walkBarefoot: "Хождение босиком дома",
                                               sleepOpenWindow: "Сон с открытым окном",
                                               washingColdWater: "Умывание холодной водой утром и вечером")
}
