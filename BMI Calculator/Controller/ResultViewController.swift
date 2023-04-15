//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Andrey on 13.04.2023.
//

import UIKit

class ResultViewController: UIViewController {

    let backgroundImage = UIImageView()
    let resultsVStackView = UIStackView()
    let titleLabel = UILabel()
    let resultLabel = UILabel()
    let adviceLabel = UILabel()
    let recalculateButton = UIButton()
    
    var bmiValue = "0.0"
    var advice = ""
    var backgroundColor = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        layout()
        addActions()
    }
    
    func style() {
        view.backgroundColor = backgroundColor
        
        backgroundImage.image = UIImage(named: "result_background")
        backgroundImage.contentMode = .scaleAspectFill
        
        resultsVStackView.axis = .vertical
        resultsVStackView.alignment = .fill
        resultsVStackView.distribution = .fill
        resultsVStackView.spacing = 8
        
        titleLabel.text = "YOUR RESULT"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 35)
        
        resultLabel.text = bmiValue
        resultLabel.textAlignment = .center
        resultLabel.textColor = .white
        resultLabel.font = UIFont.systemFont(ofSize: 80)
        
        adviceLabel.text = advice
        adviceLabel.textAlignment = .center
        adviceLabel.textColor = .white
        adviceLabel.font = UIFont.systemFont(ofSize: 20)
        
        recalculateButton.setTitle("RECALCULATE", for: .normal)
        recalculateButton.setTitleColor(UIColor(rgb: 0x7472D2), for: .normal)
        recalculateButton.backgroundColor = .white
    }
    
    func layout() {
        view.addSubview(backgroundImage)
        view.addSubview(resultsVStackView)
        view.addSubview(recalculateButton)
        
        resultsVStackView.addArrangedSubview(titleLabel)
        resultsVStackView.addArrangedSubview(resultLabel)
        resultsVStackView.addArrangedSubview(adviceLabel)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        resultsVStackView.translatesAutoresizingMaskIntoConstraints = false
        recalculateButton.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        adviceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            resultsVStackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            resultsVStackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            recalculateButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            recalculateButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            recalculateButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            recalculateButton.heightAnchor.constraint(equalToConstant: 51),
        ])
    }
    
    func addActions() {
        recalculateButton.addTarget(self, action: #selector(recalculateButtonPressed(_:)), for: .touchUpInside)
    }
    
    @objc func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
