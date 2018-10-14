# GooglePlacesSearchController

[![Version](https://img.shields.io/cocoapods/v/GooglePlacesSearchController.svg?style=flat)](http://cocoapods.org/pods/GooglePlacesSearchController)
[![License](https://img.shields.io/cocoapods/l/GooglePlacesSearchController.svg?style=flat)](http://cocoapods.org/pods/GooglePlacesSearchController)
[![Platform](https://img.shields.io/cocoapods/p/GooglePlacesSearchController.svg?style=flat)](http://cocoapods.org/pods/GooglePlacesSearchController)

A simple [Google Places API](https://developers.google.com/places/documentation/autocomplete) autocompleting address search controller (subclass of ```UISearchController```) for iOS devices.

GooglePlacesSearchController is 100% Swift 4, and is a fork of [GooglePlacesAutocomplete](https://github.com/watsonbox/ios_google_places_autocomplete).

No attempt has been made to integrate MapKit since displaying Google Places on a non-Google map is against their terms of service.

----------

## Screenshots
<table width="100%">
  <tr>
    <td align="left"><img src="Screenshots/view.png"/></td>
    <td align="right"><img src="Screenshots/search.png"/></td>
  </td>
</table>

----------

## Requirements

iOS 8.0+
Xcode 8.0+ / Swift 4.0

## Installation

GooglePlacesSearchController is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'GooglePlacesSearchController'
```

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

To integrate `GooglePlacesSearchController` in your code the simplest way would be:

```swift
let controller = GooglePlacesSearchController(delegate: self,
                                              apiKey: GoogleMapsAPIServerKey,
                                              placeType: .address
    // Optional: coordinate: CLLocationCoordinate2D(latitude: 55.751244, longitude: 37.618423),
    // Optional: radius: 10,
    // Optional: strictBounds: true,
    // Optional: searchBarPlaceholder: "Start typing..."
)
```

And then add controller's searchbar `controller.searchBar` to your view.

To get selected place use `viewController(didAutocompleteWith:)` delegate method:

```swift
extension ViewController: GooglePlacesAutocompleteViewControllerDelegate {
    func viewController(didAutocompleteWith place: PlaceDetails) {
        print(place.description)
        placesSearchController.isActive = false
    }
}
```

## Author

Dmitry Shmidt with help of other [contributors](https://github.com/shmidt/GooglePlacesSearchController/graphs/contributors).

## License

`GooglePlacesSearchController` is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
