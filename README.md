# UIImage - Resize and Crop in Swift
Simple class extension in Swift to resize and crop UIImages with just two functions.

### Usage
Add the file to your project and you are ready!

###### Examples

```
// Resizes an image to 100x100 pixels
let exampleImage = UIImage(named: "yourImageFile")
let resizedImage = exampleImage?.resizeToSize(CGSizeMake(100.0, 100.0))
if resizedImage != nil {
	// Your image was resized
} else {
	// Something went wrong
}

// Crops an image to 100x100 pixels, 150px from left and 200px from top
let exampleImage = UIImage(named: "yourImageFile")
let croppedImage = exampleImage?.cropToRect(CGRectMake(150.0, 200.0, 100.0, 100.0))
if croppedImage != nil {
	// Your image was cropped
} else {
	// Something went wrong
}
```