//
//  ViewController.swift
//  DayTripClone
//
//  Created by Leesongeun on 2023/01/27.
//
//스크롤이 내려가면 해더 크기가 절반이 됨
//스크롤이 올라가면 헤더 크기가 원상복구
import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var naviView: UIView!
    @IBOutlet weak var buttonsScroll: UIView!
    @IBOutlet weak var scrollMain: UIScrollView!
    
    var scrollFloat : CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollMain.delegate = self

        print(naviView.frame.origin.y)
        print(buttonsScroll.frame.origin.y)
        print(scrollMain.frame.origin.y)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //스크롤 내릴 때
        if (scrollView.contentOffset.y > 0 ){
            naviView.frame.origin.y = -100
            buttonsScroll.frame.origin.y = 0
            scrollMain.frame.origin.y = 103
        }
        //스크롤 올릴 때 , 초기 헤더
        else if (scrollView.contentOffset.y < 0 ){
            naviView.frame.origin.y = 0
            buttonsScroll.frame.origin.y = 50
            scrollMain.frame.origin.y = 153
        }
        
        scrollFloat = scrollView.contentOffset.y
        
       
        //내비 뷰 깜찍하게 올라감
        //|| scrollView.contentOffset.y > scrollFloat
    }
    
    //스크롤 방향 아래일시 네비게이션 보임 + 항목선택스크롤위치 == 네비게이션 위치
    //스크롤 방향 위 일시 네비게이션 숨김 + 항목선택스크롤 위치 == 네비게이션+self.height
   
}

