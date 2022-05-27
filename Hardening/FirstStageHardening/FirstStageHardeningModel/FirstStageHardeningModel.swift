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
                                               walkBarefoot: "1. Хождение босиком дома",
                                               sleepOpenWindow: "2. Сон с открытым окном",
                                               washingColdWater: "3. Умывание холодной водой утром и вечером")
}
