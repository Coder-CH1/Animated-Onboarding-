//
//  OnboardingVCOne.swift
//  Animated Onboarding
//
//  Created by Mac on 02/12/2024.
//

import UIKit

class OnboardingVCOne: UIViewController {
    // MARK: - Object -
    fileprivate var button = UIButton()
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.customizeButton(button, title: "Onboarding One")
        setSubviewsAndLayout()
    }    
    
    // MARK: - Subviews and Layout -
    func setSubviewsAndLayout() {
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}
