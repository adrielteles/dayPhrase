//
//  PhraseBrain.swift
//  dayPhrase
//
//  Created by Adriel Teles on 13/10/23.
//

import Foundation

struct PhraseBrain{
    
    let phrases: [String] = [
        "não deveríamos temer a morte, mais sim a vida.",
        "Faça a pessoa que você gosta se sentir especial ao invés de só mais uma.",
        "Teu abraço eras confortante⁠.","A vida é um caos aleatório,ordenada pelo tempo.",
        "Um ato aleatório de bondade, por menor que seja, pode ter um tremendo impacto na vida de outra pessoa.",
        "O aleatório não existe, nosso cérebro sempre toma decisões mesmo que ocultas.",
        "⁠Cuide de si mesmo como cuidaria de alguém que você ama."
    ]
    
    func getRandomPhrase() -> String{
        return phrases[Int.random(in: 0...(phrases.count-1))]
    }
}
