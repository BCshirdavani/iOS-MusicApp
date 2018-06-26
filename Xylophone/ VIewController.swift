//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
//import AVKit
//import AudioToolbox
import AVFoundation //  for m4a sound

class ViewController: UIViewController, AVAudioPlayerDelegate{
//    var player : AVAudioPlayer?
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    let recordingArray = ["skiBiDeep", "bweeb", "bopBop", "baDopBop", "diBiDeep", "imA","scatMan"]
    
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)

        //  Xylaphone sounds
//        playSound(note : sender.tag)
        
        //  ScatMan sounds
        playScat(note : sender.tag)
    }
    
    func playSound(note : Int){
        let soundURL = Bundle.main.url(forResource: soundArray[note - 1], withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
    
    func playScat(note : Int){
        let soundURL = Bundle.main.url(forResource: recordingArray[note - 1], withExtension: "m4a")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
    
  

}

