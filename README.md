# com.omarben.inappreview
Cordova Plugin that use the iOS class SKStore​Review​Controller to open the inapp review popup available since iOS 10.3

<p align="center">
<img src="inapp-review.jpg") alt="iOS 10.3 in app ratings reviews"/>
</p>

<p align="center">
<img src="iOS-10.3-in-app-ratings-reviews.png") alt="iOS 10.3 in app ratings reviews"/>
</p>

SKStore​Review​Controller: https://developer.apple.com/reference/storekit/skstorereviewcontroller?language=objc 
Controls the process of requesting App Store ratings and reviews from users.

Overview
Use the request​Review method to indicate when it makes sense to ask the user for ratings and review within your app.

+ request​Review
Tells StoreKit to ask the user to rate or review your app, if appropriate.



## Installation

cordova plugins add (github url)




## How-to use example in your cordova project:
```
inappreview.requestReview(success, failure);
```

More detailed example:
```
var requestReview = function(){
  try{
    var success = function() {
        console.log("success");
    }
    var failure = function() {
        console.log("Error calling Galaxy plugin");
    }
    inappreview.requestReview(success, failure);
  }catch(e){
    console.log("catch: "+e);
  }
};
```



## Credits

inappreview plugin was created by Omar Ben brahim.

## License

MMWormhole is available under the MIT license. See the LICENSE file for more info.

