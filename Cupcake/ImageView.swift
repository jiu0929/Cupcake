//
//  ImageView.swift
//  Cupcake
//
//  Created by nerdycat on 2017/3/23.
//  Copyright © 2017 nerdycat. All rights reserved.
//

import UIKit

public var ImageView: UIImageView {
    let imageView = UIImageView()
    cpk_higherHuggingAndResistance(forView: imageView)
    return imageView
}

public extension UIImageView {
    
    /**
     * Setting image
     * img use Img() internally, so it can take any kind of values that Img() supported.
     * See Img.swift for more information.
     * Usages:
        .img("cat")
        .img("#button-background")
        .img("$home-icon")
        .img(someImage)
        ...
    */
    @discardableResult public func img(_ any: Any) -> Self {
        self.image = Img(any)
        
        if self.image != nil {
            if self.frame.isEmpty {
                self.frame.size = self.image!.size
            }
        }
        
        cpk_masksToBoundsIfNeed()
        return self
    }
    
    /**
     * Setting contentMode
     * Usages:
        .mode(.scaleAspectFit)
        .mode(.center)
        ...
    */
    @discardableResult public func mode(_ contentMode: UIViewContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
}
