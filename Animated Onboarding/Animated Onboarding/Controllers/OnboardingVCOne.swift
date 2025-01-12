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
    let pageControl = UIPageControl()
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Set up UI -
    func setupUI() {
        self.view.customizeButton(button, title: "Onboarding One")
        configurePageControl(pageControl: pageControl, numberOfPages: 3, currentPage: 0)
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
}
