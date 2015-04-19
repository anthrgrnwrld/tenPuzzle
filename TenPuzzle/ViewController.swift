//
//  ViewController.swift
//  TenPuzzle
//
//  Created by Masaki Horimoto on 2015/04/19.
//  Copyright (c) 2015年 Masaki Horimoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var startPoint: CGPoint?
    var imageBeHereNowPoint: CGPoint?
    var isImageInside: Bool?

    //使用するUIImageViewを宣言
    @IBOutlet var imageBackgroud: UIImageView!
    @IBOutlet var imageTicket: UIImageView!
    @IBOutlet var image4Digit: [UIImageView]!
    @IBOutlet var imageAddition1: UIImageView!
    @IBOutlet var imageAddition2: UIImageView!
    @IBOutlet var imageAddition3: UIImageView!
    @IBOutlet var imageSubtraction1: UIImageView!
    @IBOutlet var imageSubtraction2: UIImageView!
    @IBOutlet var imageSubtraction3: UIImageView!
    @IBOutlet var imageMultiplication1: UIImageView!
    @IBOutlet var imageMultiplication2: UIImageView!
    @IBOutlet var imageMultiplication3: UIImageView!
    @IBOutlet var imageDivision1: UIImageView!
    @IBOutlet var imageDivision2: UIImageView!
    @IBOutlet var imageDivision3: UIImageView!
    @IBOutlet var imageLeftParenthesis1: UIImageView!
    @IBOutlet var imageLeftParenthesis2: UIImageView!
    @IBOutlet var imageRightParenthesis1: UIImageView!
    @IBOutlet var imageRightParenthesis2: UIImageView!

    //とりあえず"0019"の時でテスト
    var str4Digit: String = "0019"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //イメージを読み込む
        self.imageBackgroud.image = UIImage(named: "backgroud.png")
        self.imageTicket.image = UIImage(named: "ticket.png")
        self.imageAddition1.image = UIImage(named: "arithmetic_addition.png")
        self.imageAddition2.image = UIImage(named: "arithmetic_addition.png")
        self.imageAddition3.image = UIImage(named: "arithmetic_addition.png")
        self.imageSubtraction1.image = UIImage(named: "arithmetic_subtraction.png")
        self.imageSubtraction2.image = UIImage(named: "arithmetic_subtraction.png")
        self.imageSubtraction3.image = UIImage(named: "arithmetic_subtraction.png")
        self.imageMultiplication1.image = UIImage(named: "arithmetic_multiplication.png")
        self.imageMultiplication2.image = UIImage(named: "arithmetic_multiplication.png")
        self.imageMultiplication3.image = UIImage(named: "arithmetic_multiplication.png")
        self.imageDivision1.image = UIImage(named: "arithmetic_division.png")
        self.imageDivision2.image = UIImage(named: "arithmetic_division.png")
        self.imageDivision3.image = UIImage(named: "arithmetic_division.png")
        self.imageLeftParenthesis1.image = UIImage(named: "arithmetic_(.png")
        self.imageLeftParenthesis2.image = UIImage(named: "arithmetic_(.png")
        self.imageRightParenthesis1.image = UIImage(named: "arithmetic_).png")
        self.imageRightParenthesis2.image = UIImage(named: "arithmetic_).png")
        

        let val4Digit = str4Digit.toInt()   //4桁の文字列をInt型へCast
        var val4DigitArray  =               //各桁の数値を取得
        [
            val4Digit! / 1000,              //1桁目
            val4Digit! % 1000 / 100,        //2桁目
            val4Digit! % 100 / 10,          //3桁目
            val4Digit! % 10                 //4桁目
        ]
        
        for (index, val) in enumerate(val4DigitArray) {
            self.image4Digit[index].image = UIImage(named: "\(val).png")    //チケットの上に4桁の数値の画像を表示する
            self.image4Digit[index].userInteractionEnabled = true           //4桁の数値の画像のタッチ操作を有効にする
        }

        //各画像のタッチ操作を有効にする
        imageAddition1.userInteractionEnabled = true
        imageAddition2.userInteractionEnabled = true
        imageAddition3.userInteractionEnabled = true
        imageSubtraction1.userInteractionEnabled = true
        imageSubtraction2.userInteractionEnabled = true
        imageSubtraction3.userInteractionEnabled = true
        imageMultiplication1.userInteractionEnabled = true
        imageMultiplication2.userInteractionEnabled = true
        imageMultiplication3.userInteractionEnabled = true
        imageDivision1.userInteractionEnabled = true
        imageDivision2.userInteractionEnabled = true
        imageDivision3.userInteractionEnabled = true
        imageLeftParenthesis1.userInteractionEnabled = true
        imageLeftParenthesis2.userInteractionEnabled = true
        imageRightParenthesis1.userInteractionEnabled = true
        imageRightParenthesis2.userInteractionEnabled = true
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        let touch: UITouch = touches.first as! UITouch
        startPoint = touch.locationInView(self.view)
        
        
        
        // タップしたビューがUIImageViewか判断する。
        if touch.view.isKindOfClass(UIImageView) {
            isImageInside = true
        } else {
            isImageInside = false
        }
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

