//
//  TableCell.swift
//  Landmark
//
//  Created by Pawan Selokar on 7/29/16.
//  Copyright © 2016 Pawan Selokar. All rights reserved.
//

import Foundation
import UIKit

class LandmarkCell: UITableViewCell {
    
    static let reuseIdentifier = "\(LandmarkCell.self)"
    
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var background: UIView!

//    
//    var landMark: Landmark {
//        didSet {
//            
//        }
//    }
    
//    var title = "" {
//        didSet {
//            titleLabel.text = title
//        }
//    }
//    
//    var labels: [String] = [] {
//        didSet {
//            Swift.print("Change strings: \(self.labels)")
//        }
//    }
    
    
    // MARK: Initialization
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor.clear()
        selectionStyle = .none
        
        background = UIView(frame: CGRect.zero)
        background.alpha = 0.6
        contentView.addSubview(background)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    func loadData(landmarkData: [Landmark] , forIndex index: Int) {
        print("data at index \(index): \(landmarkData[index].title)")
        
        titleLabel.text = landmarkData[index].title
        
//        for label in landmarkData[index].landmarkLabels {
//            print("Labels \(label)")
//        }
        
        
        
        label1.text = landmarkData[index].landmarkLabels[0] ?? ""
        label2.text = landmarkData[index].landmarkLabels[1] ?? ""
        label3.text = landmarkData[index].landmarkLabels[2] ?? ""
    
    }
    
    func loadItem( title: String, labels: [String]) {
        titleLabel.text = title
        label1.text = labels[0]
        label2.text = labels[1]
        label3.text = labels[2]
    }
    
//    func loadViewFromNib() {
//        let bundle = Bundle(for: self.dynamicType)
//        let nib = UINib(nibName: "TokenView", bundle: bundle)
//        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
//        view.frame = bounds
//        //view.backgroundColor = backgroundcolor
//        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        self.addSubview(view)
//    }
    
}

