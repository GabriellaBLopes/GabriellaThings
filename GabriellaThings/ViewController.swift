//
//  ViewController.swift
//  GabriellaThings
//
//  Created by Gabriella Lopes on 4/14/16.
//  Copyright © 2016 Gabriella Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelGabriella: UILabel!
    @IBOutlet weak var labelLopes: UILabel!
    
    @IBOutlet weak var thingsIAm: UIButton!
    @IBOutlet weak var thingsILove: UIButton!
    @IBOutlet weak var thingsThatInspireMe: UIButton!
    @IBOutlet weak var thingsImProudOf: UIButton!
    @IBOutlet weak var thingsIDreamOf: UIButton!
    
    
    override func viewWillAppear(animated: Bool) {
        
        self.labelGabriella.alpha = 0.0
        self.labelLopes.alpha = 0.0
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    override func viewDidAppear(animated: Bool) {
        
        
        
        thingsIAm.center.x += self.view.frame.maxX
        thingsILove.center.x += self.view.frame.maxX
        thingsIDreamOf.center.x += self.view.frame.maxX
        thingsImProudOf.center.x += self.view.frame.maxX
        thingsThatInspireMe.center.x += self.view.frame.maxX
        
        self.view.layoutIfNeeded()
        
        UIView.animateWithDuration(3.0, delay: 0.5, options: [], animations:{
            
            
            //            self.labelGabriella.center.x += self.view.bounds.width - self.labelGabriella.bounds.maxX + 20
            //            self.labelLopes.center.x -= self.view.bounds.width + self.labelLopes.bounds.minX - 4
            
            self.labelGabriella.alpha = 1.0
            self.labelLopes.alpha = 1.0
            
            }, completion: nil)
        
        
        
        UIView.animateWithDuration(1.5, delay: 1.0, options: [.CurveEaseInOut], animations: {
            
            self.thingsIAm.center.x -= self.view.bounds.width
            
            }, completion: nil)
        
        UIView.animateWithDuration(1.5, delay: 1.1, options: [.CurveEaseInOut], animations: {
            
            self.thingsILove.center.x -= self.view.bounds.width
            
            }, completion: nil)
        
        UIView.animateWithDuration(1.5, delay: 1.2, options: [.CurveEaseInOut], animations: {
            
            self.thingsIDreamOf.center.x -= self.view.bounds.width
            
            }, completion: nil)
        
        UIView.animateWithDuration(1.5, delay: 1.3, options: [.CurveEaseInOut], animations: {
            
            self.thingsImProudOf.center.x -= self.view.bounds.width
            
            }, completion: nil)
        
        UIView.animateWithDuration(1.5, delay: 1.4, options: [.CurveEaseInOut], animations: {
            
            self.thingsThatInspireMe.center.x -= self.view.bounds.width
            
            }, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    @IBAction func tappedThingsIAm(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, delay: 0.2, options: [.CurveEaseInOut], animations: {
            
            self.thingsILove.alpha = 0.0
            self.thingsIDreamOf.alpha = 0.0
            self.thingsImProudOf.alpha = 0.0
            self.thingsThatInspireMe.alpha = 0.0
            self.labelGabriella.alpha = 0.0
            self.labelLopes.alpha = 0.0
    
            
            }, completion: { _ in
                
                
                UIView.animateWithDuration(0.5, delay: 0.0, options: [.CurveEaseInOut], animations: {
                    
                    self.thingsIAm.center.x = self.view.frame.midX
                    self.thingsIAm.frame.origin.y = 22
                    self.thingsIAm.transform = CGAffineTransformMakeScale(1.5, 1.5)
                    
                    
                    }, completion: { _ in
                        
                        self.performSegueWithIdentifier("goToThingsIAm", sender: self)
                        
                    })
                
            })
    }
    
    
}

