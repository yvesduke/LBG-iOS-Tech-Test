# LBG-iOS-Tech-Test


#### Intro :
This is a small app that fetches product data from an API EndPoint and displays a list of product name with thier prices. The app also allows users to click on any of the products to view product description. The app is implemented following clean architecture with SwiftUI and async await for service call to ensure a clear separation of concerns.

#### Quick start :
Using either a real device or a simulator, lunch the app and you will be presented with a list of Products and their prices. You can scroll up and down to see a full list of products. If you click on one of the product displayed on the list, you will be presented with a detail page containing product tittle and Product description.

#### Status :
- The app is currently using SwiftUI to create user Interface. It is build using Clean architecture with Testcases and it uses async await to fetch data from the API.
- Implemented an API call using URLSession to retrieve the necessary data, parse Json data using Codable, and display it in the app's user interface.
- The app currenlty supports different ios screen sizes and targets ios 13 and above
- Writen unit tests for the network layer using XCTest.
- Implemented Error handling

#### What's included :
- Presentation Layer: This layer contains the app's UI, which is productListView, ProductDetailView and the ViewModel. The presentation layer is
responsible for displaying the data to the user and handling the user's interactions.
- Domain Layer: This layer contains the business logic and use cases of the app. The domain layer is responsible for defining the app's requirements and translating them into application-specific operations.
- Data Layer: This layer is responsible for handling the fetching product data. It contains repositories and data sources, and it is interacting with the Api endpoint.
- Used dependency injection to connect the layers ensuring that they are independent of each other. This allowed me swap out dependencies without affecting other parts of the app and this is shown where I used MockedNetworkManager to test my network layer without using the real Network manager.

#### Features :
- Display a list of Products Staff with their prices,
- Click on any user to display a detail view of that specific product
- Error Page display in case of an error
