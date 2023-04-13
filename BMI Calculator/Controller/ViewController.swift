//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Andrey on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImage = UIImageView()
    let vStackView = UIStackView()
    let titleLabel = UILabel()
    let heightHStackView = UIStackView()
    let heightLabel = UILabel()
    let heightValueLabel = UILabel()
    let heightSlider = UISlider()
    let weightHStackView = UIStackView()
    let weightLabel = UILabel()
    let weightValueLabel = UILabel()
    let weightSlider = UISlider()
    let calculateButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
        addActions()
    }

    func style() {
        backgroundImage.image = UIImage(named: "calculate_background")
        backgroundImage.contentMode = .scaleAspectFill
        
        vStackView.axis = .vertical
        vStackView.alignment = .fill
        vStackView.distribution = .fillProportionally
        vStackView.spacing = 10
        
        titleLabel.font = UIFont(name: "Helvetica-bold", size: 40)
        titleLabel.textColor = .darkGray
        titleLabel.numberOfLines = 2
        titleLabel.text = "CALCULATE\nYOUR BMI"
        
        heightHStackView.axis = .horizontal
        heightHStackView.alignment = .fill
        heightHStackView.distribution = .equalSpacing
        
        weightHStackView.axis = .horizontal
        weightHStackView.alignment = .fill
        weightHStackView.distribution = .equalSpacing
        
        heightLabel.font = UIFont.systemFont(ofSize: 17)
        heightLabel.textColor = .darkGray
        heightLabel.text = "Height"
        
        heightValueLabel.font = UIFont.systemFont(ofSize: 17)
        heightValueLabel.textColor = .darkGray
        heightValueLabel.text = "\(1.0)m"
        
        heightSlider.minimumValue = 0
        heightSlider.maximumValue = 3
        heightSlider.value = 1.5
        heightSlider.minimumTrackTintColor = UIColor(rgb: 0x7472D2)
        heightSlider.thumbTintColor = UIColor(rgb: 0x7472D2)
        
        weightLabel.font = UIFont.systemFont(ofSize: 17)
        weightLabel.textColor = .darkGray
        weightLabel.text = "Weight"
        
        weightValueLabel.font = UIFont.systemFont(ofSize: 17)
        weightValueLabel.textColor = .darkGray
        weightValueLabel.text = "\(100)kg"
        
        weightSlider.minimumValue = 0
        weightSlider.maximumValue = 200
        weightSlider.value = 100
        weightSlider.minimumTrackTintColor = UIColor(rgb: 0x7472D2)
        weightSlider.thumbTintColor = UIColor(rgb: 0x7472D2)
        
        calculateButton.backgroundColor = UIColor(rgb: 0x665ba2)
        calculateButton.setTitleColor(.white, for: .normal)
        calculateButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        calculateButton.setTitle("CALCULATE", for: .normal)
       }
       
    func layout() {
        view.addSubview(backgroundImage)
        view.addSubview(vStackView)
        
        // Add elements in main vertical stack view
        vStackView.addArrangedSubview(titleLabel)
        vStackView.addArrangedSubview(heightHStackView)
        vStackView.addArrangedSubview(heightSlider)
        vStackView.addArrangedSubview(weightHStackView)
        vStackView.addArrangedSubview(weightSlider)
        vStackView.addArrangedSubview(calculateButton)
        
        // Add elements in height labels horizontal stack view
        heightHStackView.addArrangedSubview(heightLabel)
        heightHStackView.addArrangedSubview(heightValueLabel)
        
        // Add elements in weight labels horizontal stack view
        weightHStackView.addArrangedSubview(weightLabel)
        weightHStackView.addArrangedSubview(weightValueLabel)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        heightHStackView.translatesAutoresizingMaskIntoConstraints = false
        heightSlider.translatesAutoresizingMaskIntoConstraints = false
        weightHStackView.translatesAutoresizingMaskIntoConstraints = false
        weightSlider.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            vStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            vStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            vStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            vStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            heightHStackView.heightAnchor.constraint(equalToConstant: 20),
            
            heightSlider.heightAnchor.constraint(equalToConstant: 60),
            
            weightHStackView.heightAnchor.constraint(equalToConstant: 20),
            
            weightSlider.heightAnchor.constraint(equalToConstant: 60),
            
            calculateButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    func addActions() {
        
    }

}

