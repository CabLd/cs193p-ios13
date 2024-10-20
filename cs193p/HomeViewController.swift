//
//  ViewController.swift
//  cs193p
//
//  Created by tianzhi yang on 2024/10/20.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    
    let cardView1: UIButton = {
        let button = UIButton()
        button.setTitle("👻", for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(cardView1)
        cardView1.snp.makeConstraints {
            $0.width.equalTo(70)
            $0.height.equalTo(120)
            $0.left.equalTo(view).offset(30)
            $0.top.equalTo(view).offset(70)
        }
        
        cardView1.addTarget(self, action: #selector(filpCard), for: .touchUpInside)
    }
    
    @objc func filpCard() {
        if let title = cardView1.title(for: .normal), title.isEmpty {
            cardView1.setTitle("👻", for: .normal)
            cardView1.backgroundColor = .white
        } else {
            cardView1.backgroundColor = .orange
            cardView1.setTitle("", for: .normal)
        }
    }

}



