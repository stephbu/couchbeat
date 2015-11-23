//
//  ViewController.swift
//  couchbeat
//
//  Created by Stephen Butler on 11/21/15.
//  Copyright © 2015 com.stephbu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    let synth = AVSpeechSynthesizer()
    
    weak var timer : NSTimer?
    
    func ViewController() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor(red:112, green:12, blue:12, alpha:255)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnStartStop(sender: StartStopButton) {

        if(timer == nil)
        {
            timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "elapsed", userInfo: nil, repeats: true)
        }
        else
        {
            timer?.invalidate()
            timer = nil
        }
    }

    @IBAction func Dontslowdown(sender: UIButton) {
        let utterance = AVSpeechUtterance(string: "wrap it up")
        utterance.pitchMultiplier = 1.3
        utterance.rate = AVSpeechUtteranceMinimumSpeechRate + ((AVSpeechUtteranceMaximumSpeechRate - AVSpeechUtteranceMinimumSpeechRate) * 0.55)
        synth.speakUtterance(utterance)
    }
    
    func elapsed() {

    }
}

