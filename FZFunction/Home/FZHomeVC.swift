//
//  FZHomeVC.swift
//  FZSwiftProduct
//
//  Created by xiehewanbang on 2019/1/31.
//  Copyright © 2019年 xiehewanbang. All rights reserved.
//

import UIKit
import Foundation

class FZHomeVC: FZBaseViewController,SDCycleScrollViewDelegate {

    @IBOutlet weak var mScrollView: UIScrollView!
    @IBOutlet weak var advImageView: UIImageView!
    
    lazy var adScrollView:SDCycleScrollView = {
        let rect = CGRect(x: 0, y: 0, width: K_SCREEN_WIDTH, height: 180)
        let adScrollView = SDCycleScrollView.init(frame: rect)
        var images = [AnyObject]()
        images.append(UIImage.init(named: "homeAdv1")!)
        images.append(UIImage.init(named: "homeAdv2")!)
        images.append(UIImage.init(named: "homeAdv3")!)
        adScrollView.localizationImageNamesGroup = images
        adScrollView.delegate = self
        return adScrollView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "首页"
        self.advImageView.addSubview(self.adScrollView)
    

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func cycleScrollView(_ cycleScrollView: SDCycleScrollView!, didScrollTo index: Int) {
        
    }

}
