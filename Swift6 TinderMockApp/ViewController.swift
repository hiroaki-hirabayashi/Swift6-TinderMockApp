//
//  ViewController.swift
//  Swift6 TinderMockApp
//
//  Created by 平林 宏淳 on 2021/01/30.
//  Copyright © 2021 Hiroaki Hirabayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let view1 = UIView()
        view1.backgroundColor = .yellow
        
        let view2 = UIView()
        view2.backgroundColor = .blue
        
        let view3 = UIView()
        view3.backgroundColor = .green
        
        let stackView = UIStackView(arrangedSubviews: [view1, view2, view3])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical // 縦に
        stackView.distribution = .fillEqually // 均等に
        
        self.view.addSubview(stackView)
        
        [stackView.topAnchor.constraint(equalTo: view.topAnchor),
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor)].forEach { $0.isActive = true }
    }


}

