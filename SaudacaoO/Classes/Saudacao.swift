//
//  SaudacaoO.swift
//  Saudacao
//
//  Created by Swift on 16/01/2018.
//  Copyright © 2018 Swift. All rights reserved.
//

import UIKit

enum Periodo {
    case dia
    case tarde
    case noite
}

class Saudacao: NSObject {
   class func definirPeriodo() -> Periodo {
    
        //resgatar hora atual
        let agora = Date()
        //Criar as datas de comparação
         let meioDia = Calendar.current.date(bySettingHour: 12, minute: 00, second: 00, of: agora)!
         let seisHoras = Calendar.current.date(bySettingHour: 18, minute: 00, second: 00, of: agora)!
        
        //Comparações para definir mensagem
        if agora >= meioDia && agora <= seisHoras {
            return .tarde
        } else if agora >= seisHoras {
            return .noite
        }
        return Periodo.dia
    }
    
    class func  saudacao() -> String {
        //resgatar o periodo atual
        let periodo = Saudacao.definirPeriodo()
        if periodo == .dia {
            return "BOM DIA ..."
        }else if periodo == .tarde {
            return "BOA TARDE ..."
        }
        return "BOA NOITE ..."
    }

}
