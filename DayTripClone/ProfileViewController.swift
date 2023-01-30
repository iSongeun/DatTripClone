//
//  ProfileViewController.swift
//  DayTripClone
//
//  Created by Leesongeun on 2023/01/28.
//

import UIKit

class ProfileViewController: UIViewController , UIScrollViewDelegate{

    var scrollFloat : CGFloat = 0.0

    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var scrollMain: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollMain.delegate = self
        self.navigationController?.navigationBar.topItem?.leftBarButtonItem?.isHidden = true
        self.navigationController?.navigationBar.backgroundColor = .white
        
        print(headerView.frame.origin.y)
        print(segment.frame.origin.y)
        //print(scrollMain.frame.origin.y)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
      
        //스크롤뷰만큼 헤더가 올라가유~~ + 네비게이션 아이템 라벨이 보임
        
    
        //헤더가 사라지고 세그먼트는 딱 걸쳐유~~
        //내리면 다시 헤더가 보여유~~
        
        
        //스크롤 내릴 때
        if (scrollView.contentOffset.y > 0 ){
            headerView.frame.origin.y -= scrollView.contentOffset.y - scrollFloat
        }
        //스크롤 올릴 때 , 초기 헤더
        else if (scrollView.contentOffset.y < 0 ){
            headerView.frame.origin.y += scrollView.contentOffset.y - scrollFloat
        }else{
            
        }
        
        scrollFloat = scrollView.contentOffset.y

    }

}
