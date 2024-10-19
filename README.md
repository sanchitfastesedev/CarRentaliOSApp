# Car Rental App

This repository contains the **Car Rental iOS App**, built using **SwiftUI** and designed following the **MVVM (Model-View-ViewModel) - Coordinator** pattern. The app allows users to view detailed information about cars, their owner. It also features notifications and supports both small and large device sizes with a responsive layout.

## Tech Stack

- **SwiftUI**: For declarative UI creation and state management.
- **MVVM Pattern**: Separation of concerns with `View`, `ViewModel`, and `Model` for clean, maintainable code.
- **Coordinator Pattern**: Manages navigation flow, making routing scalable and testable.
- **API Integration**: TODO: Integrate backend API for dynamic data fetching.
  
## Screenshots

### Different Screen Sizes

Both iPad and iPhone are supported

#### Regular Device
![Screenshot 2024-10-19 at 3 36 16 AM](https://github.com/user-attachments/assets/d7aec607-06c2-411a-8a52-98ad5c60c70e)

#### Medium Device
![Screenshot 2024-10-19 at 3 37 12 AM](https://github.com/user-attachments/assets/c92a94aa-997a-4491-869e-96f08bbd0893)

#### Large Device iPad
![Screenshot 2024-10-19 at 3 37 46 AM](https://github.com/user-attachments/assets/e90ff5b4-4362-4889-bd77-971a16bd91c5)

#### Smalles Device (iPhone SE)
![Screenshot 2024-10-19 at 3 38 57 AM](https://github.com/user-attachments/assets/25398ef1-83f6-4d7c-8a8f-a4da1b87c354)


## Features

- **Car Information Display**: Displays detailed information about each car, including the owner’s details and other available cars.
- **Notifications**: Users are notified when new updates or offers are available.
- **Responsive Layout**: The app adapts to different screen sizes, ensuring a consistent user experience across devices.
- **Segmented Control**: Easy navigation between "Information" and "Notification" views using a segmented control bar.

## Folder Structure

- **Views**: SwiftUI views representing the UI. Follows MVVM principles to separate UI logic from business logic.
- **ViewModels**: Contains all the `ObservableObject` classes responsible for providing data to the views.
- **Models**: Data models that represent the structure of the car data, owner details, and more.
- **Coordinators**: Handles the app’s navigation and flow, ensuring a clean separation of concerns for routing.

## Installation

- git clone https://github.com/sanchitfastesedev/CarRentaliOSApp.git
- open CarRentalApp.xcodeproj in Xcode

## Video

https://github.com/user-attachments/assets/1630caab-77b9-41b4-8d9b-67812b688f80


