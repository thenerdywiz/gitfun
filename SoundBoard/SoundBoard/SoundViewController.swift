//
//  SoundViewController.swift
//  SoundBoard
//
//  Created by Abe on 5/17/17.
//  Copyright © 2017 Abe. All rights reserved.
//

import UIKit
import AVFoundation

class SoundViewController:
    
UIViewController {
    
    @IBOutlet weak var
    nameTextField:
    UITextField!
    
    
    @IBOutlet weak var
    recordButton:  UIButton!
    
    
    var audioRecorder : AVAudioRecorder?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRecorder()
        
        // Do any additional setup after loading the view.
    }
    
    func setupRecorder(){
        
        do {
            // CREATE AN AUDIO SESSION
            
            let session = AVAudioSession.sharedInstance()
    
            
            try session.setCategory(AVAudioSessionCategoryPlayAndRecord)
            try session.overrideOutputAudioPort(.speaker)
            try session.setActive(true)
            
            
            //Creat URL
            
            let basePath : String = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask,true).first!
            let pathComponents = [basePath, "audio.m4a"]
            let audioURL = NSURL.fileURL(withPathComponents: pathComponents)!
            
            // Create settings
            
            var settings :  [String:AnyObject] = [:]
            settings[AVFormatIDKey] = Int(kAudioFormatMPEG4AAC) as AnyObject
            settings[AVSampleRateKey] = 44100.0 as AnyObject
            settings[AVNumberOfChannelsKey] = 2 as AnyObject
            
            
            
            //Create Audio Recorder Object
            audioRecorder = try AVAudioRecorder(url: audioURL, settings: settings)
            audioRecorder!.prepareToRecord()
            
        } catch let error as NSError{
            
            print(error)
        }
    }
    
    @IBAction func
        recordTapped(_ sender:  AnyObject){
        
        if audioRecorder!.isRecording{
        //stop the recording
            audioRecorder?.stop()
            //change button title to Record
            recordButton.setTitle("Record", for: .normal)
        
        }else{
        //Start the recording
            audioRecorder?.record()
        
            
        //Change button title to Stop
        recordButton.setTitle("Stop", for: .normal)
        }
        
        
    }
    @IBAction func playTapped(_ sender: AnyObject){
        
        
        
        
    }
    @IBAction func addTapped(_sender:  AnyObject){
        
        
    }
    
    
}
