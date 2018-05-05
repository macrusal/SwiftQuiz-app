//
//  ResultViewController.swift
//  SwiftQuiz-app
//
//  Created by Marcelo Salvador on 04/05/2018.
//  Copyright © 2018 Marcelo Salvador. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalAnswers: Int = 0;
    var totalCorrectAnswers: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswered.text = "Perguntas respondidas: \(totalAnswers)";
        lbCorrect.text = "Perguntas coretas: \(totalCorrectAnswers)";
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)";
        
        let score = (totalCorrectAnswers * 100) / totalAnswers;
        lbScore.text = "\(score)%"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    


}
