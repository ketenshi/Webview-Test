//
//  WebViewController.swift
//  webview
//
//  Created by Eugene Kwong on 2020-08-12.
//  Copyright © 2020 Mango Works. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    let contentView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addContentView()
        addToolBar()
    }

    private func addContentView() {
        contentView.backgroundColor = .red

        view.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }

    private func addToolBar() {
        let toolbar = UIToolbar()
        toolbar.barTintColor = .blue
        toolbar.tintColor = .white
        toolbar.translatesAutoresizingMaskIntoConstraints = false
//        toolbar.setContentHuggingPriority(.required, for: .vertical)

        let spacer = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        spacer.width = 42

        toolbar.items = [
                UIBarButtonItem(barButtonSystemItem: .undo, target: nil, action: nil),
                spacer,
                UIBarButtonItem(barButtonSystemItem: .fastForward, target: nil, action: nil),
                UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
                UIBarButtonItem(barButtonSystemItem: .action, target: nil, action: nil),
        ]
        view.addSubview(toolbar)

        NSLayoutConstraint.activate([
//            contentView.bottomAnchor.constraint(equalTo: toolbar.topAnchor),
            toolbar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            toolbar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            toolbar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
