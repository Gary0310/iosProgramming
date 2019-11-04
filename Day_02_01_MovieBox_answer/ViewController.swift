//
//  ViewController.swift
//  Day_02_01_MovieBox_answer
//
//  Created by edu12 on 2019. 11. 4..
//  Copyright © 2019년 edu12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let cx = 80 // self.view.bounds.size.width
        let cx = Int((self.view.bounds.size.width - 40) / 3)
        let cy = cx
        let y = Int(self.view.bounds.size.height / 2) - cx / 2
        
        // 10          10         10          10
        // 여백 - 버튼 - 여백 - 버튼 - 여백 - 버튼 - 여백
        
        let x1 = 10
        let left = UIButton(frame:CGRect(x: 0, y: 0, width: cx, height: cy))
        left.setTitle("나쁜 놈은 죽는다", for: .normal)
        left.backgroundColor = .orange
        self.view.addSubview(left)
        
        let x2 = 20 + cx
        let center = UIButton(frame:CGRect(x: 0, y: 0, width: cx, height: cy))
        center.setTitle("블레이드 러너 2049", for: .normal)
        center.backgroundColor = .orange
        self.view.addSubview(center)
        
        let x3 = 30 + cx * 2
        let right = UIButton(frame:CGRect(x: 0, y: 0, width: cx, height: cy))
        right.setTitle("알라딘", for: .normal)
        right.backgroundColor = .orange
        right.addTarget(self, action: #selector(onRight(_:)), for: .touchUpInside)
        self.view.addSubview(right)
    }
    @objc func onLeft(_ sender: UIButton){
        print("왼쪽")
    }
    
    @objc func onCenter(_ sender: UIButton){
        print("가운데")
    }
    
    @objc func onRight(_ sender: UIButton){
        print("오른쪽")
    }
}

