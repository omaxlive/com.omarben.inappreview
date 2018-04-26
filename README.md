# com.omarben.inappreview
Cordova Plugin that use the iOS class SKStore​Review​Controller to open the inapp review popup available since iOS 10.3


![ScreenShot](https://cdn-enterprise.discourse.org/ionicframework/uploads/default/original/3X/8/0/80f4eae62688e2a0a44b88e865b5a7f7b964a25f.jpg)


SKStore​Review​Controller: https://developer.apple.com/reference/storekit/skstorereviewcontroller?language=objc 
Controls the process of requesting App Store ratings and reviews from users.

Overview
Use the request​Review method to indicate when it makes sense to ask the user for ratings and review within your app.

+ request​Review
Tells StoreKit to ask the user to rate or review your app, if appropriate.



## Installation
```
cordova plugins add com.omarben.inappreview

```

npm url: https://www.npmjs.com/package/com.omarben.inappreview



## How-to use example in your cordova project (iOS +10.3 only)
```
inappreview.requestReview(success, failure);
```

More detailed example:
```javascript
var requestReview = function(){
  try{
    var success = function() {
        console.log("success");
    }
    var failure = function() {
        console.log("Error calling inappreview plugin");
    }
    inappreview.requestReview(success, failure);
  }catch(e){
    console.log("catch: "+e);
  }
};
```

## Usage in ionic 2+

#### Install the Ionic Native package of this plugin  
npm install @ionic-native/in-app-review --save

#### After installing a plugin’s package, add it to your app’s NgModule.


```typescript

import { InAppReview } from '@ionic-native/in-app-review';

@NgModule({

  providers: [
    InAppReview
  ]

})
export class AppModule { }
```

#### The use it in your page. Example:
```typescript
import { InAppReview } from '@ionic-native/in-app-review';
 

constructor(private inAppReview: InAppReview) { }

this.inAppReview.requestReview()
   .then((res: any) => console.log(res))
   .catch((error: any) => console.error(error));
 
```


## More information about the use of in app review
Apple is also limiting the amount of times developers can ask customers for reviews. Developers will only be able to bring up the review dialog three times a year. If a customer has rated the app, they will not be prompted again. If a customer has dismissed the review prompt three times, they will not be asked to review the app for another year.
More: http://www.loopinsight.com/2017/01/24/apple-explains-the-new-app-reviews-api-for-developers/ 

## Important
Note
When you call this method while your app is still in development mode, a rating/review request view is always displayed so that you can test the user interface and experience. However, this method has no effect when you call it in an app that you distribute using TestFlight.

[more...](https://developer.apple.com/documentation/storekit/skstorereviewcontroller/2851536-requestreview)

## Credits

inappreview plugin was created by Omar Ben brahim.

## License

inappreview is available under the MIT license. See the LICENSE file for more info.

