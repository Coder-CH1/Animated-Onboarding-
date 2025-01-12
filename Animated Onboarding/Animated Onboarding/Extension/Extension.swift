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
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.pageIndicatorTintColor = .yellow
        pageControl.frame = CGRect(x: 0, y: view.frame.size.height - 100, width: view.frame.size.width, height: 50)
        view.addSubview(pageControl)
    }
    
    //MARK: - This action when tapped shows each page control.
    func pageControlSelectedAction(pageControl: UIPageControl) {
        let action = UIAction { [weak self] _ in
            self?.pageControlTapped(pageControl)
        }
        pageControl.addAction(action, for: .primaryActionTriggered)
    }
        
    func pageControlTapped(_ sender: UIPageControl) {
        let currentPage = sender.currentPage
        let xOffset = view.bounds.width * CGFloat(currentPage)
        
        if let scrollView = self.view.subviews.first(where: { $0 is UIScrollView}) as? UIScrollView {
            scrollView.setContentOffset(CGPoint(x: xOffset, y: 0), animated: true)
        } else if let navigationController = self.navigationController {
            let vc = navigationController.viewControllers
            let newVC = vc[currentPage]
            navigationController.popToViewController(newVC, animated: true)
        }
    }
}
