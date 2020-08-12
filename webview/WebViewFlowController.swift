//
//  WebViewFlowController.swift
//  webview
//
//  Created by Eugene Kwong on 2020-08-12.
//  Copyright © 2020 Mango Works. All rights reserved.
//

import UIKit

class WebViewFlowController: UIViewController {



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let navController = UINavigationController(rootViewController: WebViewController())
        addChild(navController)
        view.addSubview(navController.view)

        navController.view.frame = view.bounds
        navController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        navController.didMove(toParent: self)
    }
}
