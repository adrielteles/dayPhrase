//
//  ViewController.swift
//  dayPhrase
//
//  Created by Adriel Teles on 22/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let phrases:[String] = ["não deveríamos temer a morte, mais sim a vida.","Faça a pessoa que você gosta se sentir especial ao invés de só mais uma.","Teu abraço eras confortante⁠.","A vida é um caos aleatório,ordenada pelo tempo.","Um ato aleatório de bondade, por menor que seja, pode ter um tremendo impacto na vida de outra pessoa.","O aleatório não existe, nosso cérebro sempre toma decisões mesmo que ocultas.","⁠Cuide de si mesmo como cuidaria de alguém que você ama."]
    
    @IBOutlet weak var outputPrashe: UILabel!
    
    @IBAction func newPhrase(_ sender: Any) {
        outputPrashe.text = phrases[Int.random(in: 0...(phrases.count-1))]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

