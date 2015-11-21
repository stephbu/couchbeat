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

    var synth = AVSpeechSynthesizer()
    
    func ViewController() {
    
        synth.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnStartStop(sender: StartStopButton) {
        let utterance = AVSpeechUtterance(string: "ten seconds")
        utterance.pitchMultiplier = 1.3
        utterance.rate = AVSpeechUtteranceMinimumSpeechRate + ((AVSpeechUtteranceMaximumSpeechRate - AVSpeechUtteranceMinimumSpeechRate) * 0.55)
        synth.speakUtterance(utterance)
    }

    @IBAction func Dontslowdown(sender: UIButton) {
        let utterance = AVSpeechUtterance(string: "keep it up")
        utterance.pitchMultiplier = 1.3
        utterance.rate = AVSpeechUtteranceMinimumSpeechRate + ((AVSpeechUtteranceMaximumSpeechRate - AVSpeechUtteranceMinimumSpeechRate) * 0.55)
        synth.speakUtterance(utterance)
    }
}

