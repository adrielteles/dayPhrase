//
//  MainView.swift
//  dayPhrase
//
//  Created by Adriel Teles on 13/10/23.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func phraseButtonPressed()
}

class MainView: UIView {
    
    private weak var delegate: MainViewDelegate?
    
    public func delete(delegate: MainViewDelegate?) {
        self.delegate = delegate
    }
    
    lazy var backgoundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(resource: .background)
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var logoImageView: UIImageView = {
       let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(resource: .logo)
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    
    lazy var phraseLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 24)
        return label
    }()

    
    lazy var phraseButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(phraseButtonPressed), for: .touchUpInside)
        return button
    }()
    
    @objc func phraseButtonPressed(){
        delegate?.phraseButtonPressed()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgoundImageView)
        addSubview(logoImageView)
        addSubview(phraseLabel)
        addSubview(phraseButton)
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configContraints(){
        NSLayoutConstraint.activate([
            backgoundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgoundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgoundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgoundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            logoImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            phraseLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 80),
            phraseLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            phraseLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            phraseButton.topAnchor.constraint(equalTo: phraseLabel.topAnchor),
            phraseButton.leadingAnchor.constraint(equalTo: phraseLabel.leadingAnchor),
            phraseButton.trailingAnchor.constraint(equalTo: phraseLabel.trailingAnchor),
            phraseButton.bottomAnchor.constraint(equalTo: phraseLabel.bottomAnchor)
            

        ])
    }
}
