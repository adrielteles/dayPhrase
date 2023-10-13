//
//  MainViewController.swift
//  dayPhrase
//
//  Created by Adriel Teles on 13/10/23.
//

import UIKit

class MainViewController: UIViewController{
    
    
    var screen: MainView?
    let randomPhrase: PhraseBrain = PhraseBrain()
    
    override func loadView() {
        screen = MainView()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.phraseLabel.text = randomPhrase.getRandomPhrase()
        screen?.delegate(delegate: self)
    }

}

extension MainViewController: MainViewDelegate {
    func phraseButtonPressed() {
        screen?.phraseLabel.text = randomPhrase.getRandomPhrase()
    }
}
