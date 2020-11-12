//
//  ViewController.swift
//  HelloWordWithOther
//
//  Created by Mohammad Edrees on 11/12/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        creatLable()
        
    }
    private func creatLable() {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 300))
        
        label.font = .systemFont(ofSize: 35)
        
        let string = "Hello Word"
        let attributedtext = NSMutableAttributedString(string: string)
        
        attributedtext.addAttribute(
            .foregroundColor, value:
                UIColor.systemBlue, range:
                    NSRange(location: 0, length: 5)
        )
        attributedtext.addAttribute(
            .underlineStyle,
            value:NSNumber(value: 1),
            range:NSRange(location: 0, length: 5)
        
        )
        attributedtext.addAttribute(
            .font,
            value:UIFont.systemFont(ofSize: 42, weight: .semibold),
            range:NSRange(location: 0, length: string.count-5)
        )
        
        
        label.attributedText = attributedtext
        
        label.textAlignment = .center
        label.center = view.center
        view.addSubview(label)
        //label.backgroundColor = .link
    
    }

}

