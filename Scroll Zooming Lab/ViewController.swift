//
//  ViewController.swift
//  Scroll Zooming Lab
//
//  Created by Bertran on 13.10.2018.
//  Copyright © 2018 Bertran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "eclips")
        scrollView.contentSize = imageView.image!.size
        // распространяем размер скрол до размеров картинки
        
        // меняем допустимые значения коэффициента зуминга - масштаба
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 10.0
        
        // назначаем делегатом Скролл вью текущий класс, чтобы реализовать метод выбора объекта представления для зуминга
          scrollView.delegate = self
        
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
        
        // говорим скролл вью какое именно вью нужно масштабировать когда должен произойти зуминг
        
    }
}

