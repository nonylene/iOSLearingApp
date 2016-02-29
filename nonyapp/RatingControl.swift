//
//  RatingControl.swift
//  nonyapp
//
//  Created by nonylene on 2/11/16.
//  Copyright © 2016 nonylene. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    var rating = 0 {
        didSet {
            setNeedsLayout()
        }
    }

    var spacing = 0
    var stars = 5
    var raitingButtons = [UIButton]()

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let emptyStar = UIImage(named: "emptyStar")
        let fillStar = UIImage(named: "filledStar")
        for _ in 0..<stars {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.addTarget(self, action: "raitingButtonTapped:", forControlEvents: .TouchDown)
            button.setImage(emptyStar, forState: .Normal)
            button.setImage(fillStar, forState: .Selected)
            button.setImage(fillStar, forState: [.Highlighted, .Selected])
           button.adjustsImageWhenHighlighted = true
            addSubview(button)
            raitingButtons.append(button)
        }
    }

    override func layoutSubviews() {
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        for (index, button) in raitingButtons.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
        }
        updateButtonStatus()
    }

    override func intrinsicContentSize() -> CGSize {
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize + spacing) * stars

        return CGSize(width: width, height: 44)
    }

    func raitingButtonTapped(button: UIButton) {
        print("tapped!!!!")
        rating = raitingButtons.indexOf(button)! + 1
        updateButtonStatus()
    }

    func updateButtonStatus() {
        for (index, button ) in raitingButtons.enumerate() {
            button.selected = index < rating
        }
    }
}
