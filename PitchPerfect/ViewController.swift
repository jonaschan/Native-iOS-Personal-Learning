//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Sean Jonas on 14/07/2018.
//  Copyright © 2018 Sean Jonas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startRecording: UIButton!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.isEnabled = false;
        startRecording.isEnabled = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onStartRecordingButtonSelected(_ sender: Any) {
        print("Recording began!");
        progressLabel.text = "Recording...";
        stopRecordingButton.isEnabled = true;
        startRecording.isEnabled = false;
    }
    
    @IBAction func onStopRecordingButtonSelected(_ sender: Any) {
        print("Recording stopped!");
        progressLabel.text = "Ready To Record!"
        stopRecordingButton.isEnabled = false;
        startRecording.isEnabled = true;
    }
}

