//
//  ViewController.swift
//  DependencyManagersPractice
//
//  Created by Tatiana Carvajal on 13/07/23.
//

import UIKit
import Lottie


class ViewController: UIViewController {

    private struct Constants {
        static let animationViewPadding = UIEdgeInsets(top: 20, left: 20, bottom: 0, right: -20)
        static let animationHeight: CGFloat = 300
        static let animationWidth: CGFloat = 300
    }
    
    private lazy var animationView: LottieAnimationView = {
        let animationView = LottieAnimationView(name: "TodoAnimation")
        animationView.contentMode = .scaleToFill
        animationView.loopMode = .loop
        animationView.animationSpeed = 0.5
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        return animationView
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnimationView()
        
        
    }
    
    private func setupAnimationView() {
        view.addSubview(self.animationView)
        
        self.animationView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Constants.animationViewPadding.top).isActive = true
        self.animationView.heightAnchor.constraint(equalToConstant: Constants.animationHeight).isActive = true
        self.animationView.widthAnchor.constraint(equalToConstant: Constants.animationWidth).isActive = true
        self.animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        self.animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}
