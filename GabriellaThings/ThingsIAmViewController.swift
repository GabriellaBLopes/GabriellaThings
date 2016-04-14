//
//  ThingsIAmViewController.swift
//  GabriellaThings
//
//  Created by Gabriella Lopes on 4/14/16.
//  Copyright © 2016 Gabriella Lopes. All rights reserved.
//

import UIKit

class ThingsIAmViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UIButton!
    @IBOutlet weak var textoThingsIAm: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.frame.origin.y = 22
        self.textoThingsIAm.alpha = 0.0
        self.titleLabel.transform = CGAffineTransformMakeScale(1.5, 1.5)

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.5, delay: 0.0, options: [.CurveEaseInOut], animations: {
            
            self.textoThingsIAm.alpha = 1.0
            
            }, completion: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
