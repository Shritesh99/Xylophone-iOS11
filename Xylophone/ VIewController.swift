//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2018 Shritesh Jamulkar . All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        guard let url1 = Bundle.main.url(forResource: "note1", withExtension: "wav") else { return }
        guard let url2 = Bundle.main.url(forResource: "note2", withExtension: "wav") else { return }
        guard let url3 = Bundle.main.url(forResource: "note3", withExtension: "wav") else { return }
        guard let url4 = Bundle.main.url(forResource: "note4", withExtension: "wav") else { return }
        guard let url5 = Bundle.main.url(forResource: "note5", withExtension: "wav") else { return }
        guard let url6 = Bundle.main.url(forResource: "note6", withExtension: "wav") else { return }
        guard let url7 = Bundle.main.url(forResource: "note7", withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            switch sender.tag {
            case 1:
                player = try AVAudioPlayer(contentsOf: url1, fileTypeHint: AVFileType.wav.rawValue)
                break
            case 2:
                player = try AVAudioPlayer(contentsOf: url2, fileTypeHint: AVFileType.wav.rawValue)
                break
            case 3:
                player = try AVAudioPlayer(contentsOf: url3, fileTypeHint: AVFileType.wav.rawValue)
                break
            case 4:
                player = try AVAudioPlayer(contentsOf: url4, fileTypeHint: AVFileType.wav.rawValue)
                break
            case 5:
                player = try AVAudioPlayer(contentsOf: url5, fileTypeHint: AVFileType.wav.rawValue)
                break
            case 6:
                player = try AVAudioPlayer(contentsOf: url6, fileTypeHint: AVFileType.wav.rawValue)
                break
            case 7:
                player = try AVAudioPlayer(contentsOf: url7, fileTypeHint: AVFileType.wav.rawValue)
                break
            default:
                print("no sound")
            }
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
    
    
    
}
