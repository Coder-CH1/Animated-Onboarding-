//
//  OnboardingVCThree.swift
//  Animated Onboarding
//
//  Created by Mac on 02/12/2024.
//

import UIKit

class OnboardingVCThree: UIViewController {

    // MARK: - Object -
    fileprivate var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.customizeButton(button, title: "Back")
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
