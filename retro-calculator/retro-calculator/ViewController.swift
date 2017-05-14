//
//  ViewController.swift
//  retro-calculator
//
//  Created by Abe on 4/29/16.
//  Copyright © 2016 Abe. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    enum Operation:  String {
        
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
    }
    
    
    @IBOutlet weak var outputLbl:  UILabel!
    
      var btnSound:  AVAudioPlayer!
    
    
    var runningNumber = ""
    
    var leftValStr = ""
 
    var rightValStr = ""
    
    var currentOperation:  Operation = Operation.Empty
    
    var result = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let  path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            
        try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError{
        
        
        print(err.debugDescription)
        
        
        }
        
    }
    
    
    @IBAction func numberPressed (btn:  UIButton!){
        //
        playSound()
    runningNumber += "\(btn.tag)"
        outputLbl.text = runningNumber
    
    
    }
  
    @IBAction func onDividePressed(sender: AnyObject) {
   processOperation(Operation.Divide)
    
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
    
    processOperation(Operation.Multiply)
    
    
    }
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
    
    processOperation(Operation.Subtract)
    
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
   
    processOperation(Operation.Add)
    
    }

    @IBAction func onEqualPressed(sender: AnyObject) {
    processOperation(currentOperation)
    
    
    }
    
    func processOperation(op:  Operation){
    playSound()
        
        
        if currentOperation != Operation.Empty{
        
        //run some math
            
    // a user selected 2 operators without entering a number
            
            if runningNumber != ""
            {
            
            
            rightValStr = runningNumber
            runningNumber = ""
                currentOperation = op
                
                
            if currentOperation == Operation.Multiply{
            
            result = "\(Double(leftValStr)! * Double(rightValStr)!)"
            
            
            } else if currentOperation == Operation.Divide {
            
            result = "\(Double(leftValStr)! / Double(rightValStr)!)"
            
                
            
            
            } else if currentOperation == Operation.Subtract {
                
                result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                
            } else if currentOperation == Operation.Add{
            
            result = "\(Double(leftValStr)! + Double(rightValStr)!)"
            }
        leftValStr = result
            outputLbl.text = result
                
                
                
            }
           currentOperation = op
        
        } else {
            //this is a first run
        
        leftValStr = runningNumber
            runningNumber = ""
        
        currentOperation = op
            
            }
        }
    
    
    
    
    
    func playSound(){
    
        if btnSound.playing{
        
        btnSound.stop()
        
        }
    btnSound.play()
    }
    
}

