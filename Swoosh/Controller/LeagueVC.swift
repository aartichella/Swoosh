//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Aarti Chella on 5/9/18.
//  Copyright © 2018 aarti. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.isEnabled = false
        player = Player()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func onMensTapped(_ sender: Any) {
        setDesiredLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        setDesiredLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        setDesiredLeague(leagueType: "coed")
    }
    
    func setDesiredLeague (leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }

}
