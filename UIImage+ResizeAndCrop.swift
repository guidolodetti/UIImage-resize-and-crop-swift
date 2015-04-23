//
//  UIImage+ResizeAndCrop.swift
//
//  Created by Guido Lodetti on 13/04/15.
//  Copyright (c) 2015 Guido Lodetti. All rights reserved.
//

extension UIImage {
    
    // Resizes an input image (self) to a specified size
    func resizeToSize(size: CGSize!) -> UIImage? {
        // Begins an image context with the specified size
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0);
        // Draws the input image (self) in the specified size
        self.drawInRect(CGRectMake(0, 0, size.width, size.height))
        // Gets an UIImage from the image context
        let result = UIGraphicsGetImageFromCurrentImageContext()
        // Ends the image context
        UIGraphicsEndImageContext();
        // Returns the final image, or NULL on error
        return result;
    }
    
    // Crops an input image (self) to a specified rect
    func cropToRect(rect: CGRect!) -> UIImage? {
        // Correct rect size based on the device screen scale
        let scaledRect = CGRectMake(rect.origin.x * self.scale, rect.origin.y * self.scale, rect.size.width * self.scale, rect.size.height * self.scale);
        // New CGImage reference based on the input image (self) and the specified rect
        let imageRef = CGImageCreateWithImageInRect(self.CGImage, scaledRect);
        // Gets an UIImage from the CGImage
        let result = UIImage(CGImage: imageRef, scale: self.scale, orientation: self.imageOrientation)
        // Returns the final image, or NULL on error
        return result;
    }
    
}
