//
//  ViewController.swift
//  webview
//
//  Created by Eugene Kwong on 2020-08-12.
//  Copyright © 2020 Mango Works. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func push(_ sender: Any) {
        navigationController?.show(WebViewController(), sender: nil)
    }

    @IBAction func present(_ sender: Any) {
        present(WebViewFlowController(), animated: true, completion: nil)
    }
}

