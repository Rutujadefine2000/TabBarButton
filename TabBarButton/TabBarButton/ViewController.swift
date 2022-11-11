//
//  ViewController.swift
//  TabBarButton
//
//  Created by Brahmastra on 07/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let button: UIButton = {
           let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
           button.setTitle("log ln", for: .normal)
           button.backgroundColor = .white
           button.setTitleColor(.black, for: .normal)
           return button
    
   }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }

       override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           button.center = view.center
       }
    @objc func didTapButton(){
        let tabBarVC = UITabBarController()
      
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: FifthViewController())
        
           vc1.title = "Home"
           vc2.title = "Contact"
           vc3.title = "Help"
          vc4.title = "About"
         vc5.title = "Setting"
         
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        guard let items = tabBarVC.tabBar.items else{
            return
        }
        let images = ["house","bell","person.circle","star","gear"]
        
        for x in 0..<items.count {
            items[x].badgeValue = "1"
            items[x].image = UIImage(systemName: images[x])
        }
        
        
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
        
    }
}
class FirstViewController: UIViewController{
    override func viewDidLoad() {
        view.backgroundColor = .red
        title = "Home"
        
    }
}
class SecondViewController: UIViewController{
    override func viewDidLoad() {
        view.backgroundColor = .blue
        title = "Contact"
    }
}

class ThirdViewController: UIViewController{
    override func viewDidLoad() {
        view.backgroundColor = .green
        title = "Help"
    }
}
class FourthViewController: UIViewController{
    override func viewDidLoad() {
        view.backgroundColor = .purple
        title = "About"
        
    }
}
class FifthViewController: UIViewController{
    override func viewDidLoad() {
        view.backgroundColor = .orange
        title = "Setting"
    }
}
