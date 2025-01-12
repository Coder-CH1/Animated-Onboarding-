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
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Set up UI -
    func setupUI() {
        self.view.customizeButton(button, title: "Onboarding Three")
        setSubviewsAndLayout()
    }
    
    // MARK: - Subviews and Layout -
    func setSubviewsAndLayout() {
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    @objc func btnButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
