//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Andrey on 13.04.2023.
//

import UIKit

class ResultViewController: UIViewController {

    let backgroundColor = UIView()
    let backgroundImage = UIImageView()
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        layout()
        addActions()
    }
    
    func style() {
        backgroundColor.backgroundColor = UIColor(rgb: 0x337BC5)
        
        backgroundImage.image = UIImage(named: "result_background")
        backgroundImage.contentMode = .scaleAspectFill
        
        
    }
    
    func layout() {
        view.addSubview(backgroundColor)
        view.addSubview(backgroundImage)
        
        backgroundColor.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundColor.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundColor.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundColor.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundColor.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
        ])
    }
    
    func addActions() {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
