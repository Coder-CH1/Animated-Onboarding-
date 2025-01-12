//
//  OnboardingVCTwo.swift
//  Animated Onboarding
//
//  Created by Mac on 02/12/2024.
//

import UIKit

class OnboardingVCTwo: UIViewController {
    
    // MARK: - Object -
    fileprivate var button = UIButton()
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.customizeButton(button, title: "Continue")
        setSubviewsAndLayout()
    }
    
    // MARK: - Subviews and Layout -
    func setSubviewsAndLayout() {
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        button.addTarget(self, action: #selector(btnButtonTapped), for: .touchUpInside)
    }
    
    @objc func btnButtonTapped() {
        let vc = OnboardingVCThree()
        navigationController?.pushViewController(vc, animated: false)
    }
}
