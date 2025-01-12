//
//  Constant.swift
//  Animated Onboarding
//
//  Created by Mac on 02/12/2024.
//

import UIKit
// MARK: - Extension -
extension UIView {
    // MARK: - Function for customizing object properties and values -
    func customizeButton(_ button: UIButton, title: String) {
        button.setTitle(title, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
    }    
}

extension UIViewController {
    func configurePageControl(pageControl: UIPageControl, numberOfPages: Int, currentPage: Int) {
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = currentPage
        pageControl.currentPageIndicatorTintColor = .white
        pageControl.pageIndicatorTintColor = .gray
        pageControl.frame = CGRect(x: 0, y: view.frame.size.height - 100, width: view.frame.size.width, height: 50)
        view.addSubview(pageControl)
    }
}
