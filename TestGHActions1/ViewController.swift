//
//  ViewController.swift
//  TestGHActions1
//
//  Created by githubactions on 22.02.2022.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    private let model = Model()
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Tap this", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "* empty *"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        model.output = self

        view.addSubview(label)
        label.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(0.5)
        }
        view.addSubview(button)
        button.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}

extension ViewController: ModelOutputProtocol {
    func resultChanged(result: String) {
        label.text = result
    }
}

private extension ViewController {
    @objc func buttonAction() {
        model.action()
    }
}



