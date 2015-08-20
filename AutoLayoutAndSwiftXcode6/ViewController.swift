//
//  ViewController.swift
//  AutoLayoutAndSwiftXcode6
//
//  Created by imac on 15/8/15.
//  Copyright (c) 2015年 com.rainsoft.eyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var middleViewTopSpaceLayoutConstant:CGFloat!
    var middleViewOriginY:CGFloat!
    
    @IBOutlet var panGesture: UIPanGestureRecognizer!
    @IBOutlet weak var middleView: UIView!
    
    @IBOutlet weak var middleViewTopSpaceLayout: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        middleViewTopSpaceLayoutConstant=middleViewTopSpaceLayout.constant
        middleViewOriginY=middleView.frame.origin.y
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pan(sender: AnyObject) {
        
        if panGesture.state == UIGestureRecognizerState.Ended{
            
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                self.middleView.frame.origin.y=self.middleViewOriginY

            }, completion: { (success) -> Void in
                if success{
                    //些处加不加没什么意义
                    self.middleViewTopSpaceLayout.constant=self.middleViewTopSpaceLayoutConstant
                }
            })
            
            
            return
        }
        let y=panGesture.translationInView(self.view).y
        
        middleViewTopSpaceLayout.constant=middleViewTopSpaceLayoutConstant + y

        
    }

}

