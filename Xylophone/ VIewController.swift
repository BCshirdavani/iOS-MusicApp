//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVKit
import AudioToolbox
import AVFoundation //  for m4a sound

class ViewController: UIViewController{
    
//    var player : AVAudioPlayer?
//    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    let recordingArray = ["skiBiDeep", "bweeb", "bopBop", "baDopBop", "diBiDeep", "imA","scatMan"]


    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)

        //  Xylaphone sounds
//        if let soundURL = Bundle.main.url(forResource : soundArray[sender.tag - 1], withExtension : "wav"){
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
//            // Play
//            AudioServicesPlaySystemSound(mySound)
//        }
        //  ScatMan sounds
        if let soundURL = Bundle.main.url(forResource : recordingArray[sender.tag - 1], withExtension : "m4a"){
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound)
        }

    }
    
  

}

