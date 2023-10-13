//
//  MainViewController.swift
//  dayPhrase
//
//  Created by Adriel Teles on 13/10/23.
//

import UIKit

class MainViewController: UIViewController, MainViewDelegate{
    
    
    func phraseButtonPressed() {
        screen?.phraseLabel.text = randomPhrase.getRandomPhrase()
    }
    
    var screen: MainView?
    let randomPhrase: PhraseBrain = PhraseBrain()
    
    override func loadView() {
        screen = MainView()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.phraseLabel.text = randomPhrase.getRandomPhrase()
        screen?.delete(delegate: self)
    }

}
