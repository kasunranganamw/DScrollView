//
//  ViewController.swift
//  DScrollView
//
//  Created by kasunranganamw@gmail.com on 09/24/2020.
//  Copyright (c) 2020 kasunranganamw@gmail.com. All rights reserved.
//

import UIKit
import DScrollView

class ViewController: UIViewController {
    
    let scrollView = DScrollView()
    let scrollViewContainer = DScrollViewContainer(axis: .vertical, spacing: 10)
    let scrollViewElement0 = DScrollViewElement(height: 1200, backgroundColor: .purple)
    let scrollViewElement1 = DScrollViewElement(height: 500, backgroundColor: .purple)
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        label.text = "I LOVE YOU AMA !"
        view.addScrollView(scrollView, withSafeArea: .none, hasStatusBarCover: true, statusBarBackgroundColor: .darkGray, container: scrollViewContainer, elements: [scrollViewElement0, scrollViewElement1])
        scrollViewElement1.addSubview(label)
        label.edgeTo(scrollViewElement1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

