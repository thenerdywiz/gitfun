//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by Abe on 6/24/16.
//  Copyright © 2016 Abe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    

    
    let  WIDTH: CGFloat = 240
    let  HEIGHT:  CGFloat = 297
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame =  CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 270, WIDTH, HEIGHT)
            
            
            CGSizeMake(WIDTH * 5, scrollView.frame.size.height)
        
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

