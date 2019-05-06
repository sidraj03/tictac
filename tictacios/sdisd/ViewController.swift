//
//  ViewController.swift
//  sdisd
//
//  Created by Sidharth  Miglani on 4/12/18.
//  Copyright © 2018 Sidharth  Miglani. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var turn=1
    var arr1=[Int]()
    var arr2=[Int]()
  
    @IBOutlet weak var disp1: UILabel!
    @IBOutlet weak var disp2: UILabel!
    
    @IBAction func tic(_ sender: UIButton) {
        if(turn==1)
        {
          sender.setImage(UIImage(named:"cross.png"), for:UIControlState())
            arr1.append(sender.tag)
            let a:Int=check1(arr:arr1)
            if(a==3)
            {
                disp1.isHidden=false
////                let b=UIAlertController(title:"play1", message:"Player1 has won", preferredStyle:.alert)
////                let r=UIAlertAction(title:"restart", style:.default, handler: { (UIAlertAction)in
//                    for i in 1...9{
//                        let button=self.view.viewWithTag(i) as! UIButton
//                        button.setImage(nil, for: UIControlState())
//                    }
//                    self.startover()
//                 })
//                b.addAction(r)
//                present(b,animated: true,completion:nil)
            }
            else{
                turn=2
            }
        }
        else if(turn==2)
        {
            sender.setImage(UIImage(named:"zero.png"), for:UIControlState())
            arr2.append(sender.tag)
            let a:Int=check1(arr:arr2)
            if(a==3)
            {
         disp2.isHidden=false
//                let b=UIAlertController(title:"play1", message:"Player2 has won", preferredStyle:.alert)
//                let r=UIAlertAction(title:"res", style:.default, handler: { (UIAlertAction)in
//                    sender.isHidden=true
//                })
//                b.addAction(r)
//                present(b,animated: true,completion:nil)
//
            }
            else{
                turn=1
            }
        }
        
    }
    func check1(arr:[Int])->Int
    {
        var count1:Int=0
        var count2:Int=0
        var count3:Int=0
        var count4:Int=0
        var count5:Int=0
        var count6:Int=0
        var count7:Int=0
        var count8:Int=0

        
        for i in 0..<arr.count{
            if(arr[i]==1||arr[i]==2||arr[i]==3)
            {
                count1=count1+1
                if(count1==3)
                {
                return count1
                }
            }
            if(arr[i]==4||arr[i]==5||arr[i]==6)
            {
                count2=count2+1
                if(count2==3)
                {
                    return count2
                }

            }
           if(arr[i]==7||arr[i]==8||arr[i]==9)
            {
                count3=count3+1
                
                if(count3==3)
                {
                    return count3
                }

            }
            if(arr[i]==1||arr[i]==4||arr[i]==7)
            {
                count4=count4+1
                if(count4==3)
                {
                    return count4
                }

            }
            if(arr[i]==2||arr[i]==5||arr[i]==8)
            {
                count5=count5+1
                if(count5==3)
                {
                    return count5
                }

            }
           if(arr[i]==3||arr[i]==6||arr[i]==9)
            {
                count6=count6+1
                if(count6==3)
                {
                    return count6
                }

            }
            if(arr[i]==1||arr[i]==5||arr[i]==9)
            {
                count7=count7+1
                if(count7==3)
                {
                    return count7
                }

            }
            if(arr[i]==3||arr[i]==5||arr[i]==7)
            {
                count8=count8+1
                if(count8==3)
                {
                    return count8
                }
            }
        }
        return 0
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        disp1.isHidden=true
        disp2.isHidden=true
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play(_ sender: Any) {
        arr1=[]
        arr2=[]
        turn=1
        disp1.isHidden=true
        disp2.isHidden=true
        for i in 1...9{
            let button=self.view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControlState())
        
    }

}
}
