/*

Model(Data) - View(User Interaction) - ViewModel(act as a base between view and model layer)


            View
        |               ↑
   user action        Binder
        ↓               |
          View Model
        |               ↑
      Update          Notify
        ↓               |
            Model
*/


//MARK: Model
/*
 The Model represents the data and business logic of the application. It is responsible for:

     1.    Data Representation:
     •    Structs or classes that represent the core data entities.
     •    Example: User, Product, Order.
     2.    Data Manipulation:
     •    Functions for creating, reading, updating, and deleting data.
     •    Example: fetchUsers(), saveProduct(), deleteOrder().
     3.    Business Logic:
     •    Any logic related to data processing, validation, or business rules.
     •    Example: Calculating the total price of an order, validating user input.
     4.    Networking and Database:
     •    Services or repositories for fetching data from APIs or local databases.
     •    Example: NetworkService, DatabaseService.
 */

//MARK: View
/*
 The View represents the user interface of the application. It is responsible for:

     1.    UI Components:
     •    UIView subclasses, Storyboards, XIBs, or SwiftUI views.
     •    Example: UILabel, UIButton, UITableView.
     2.    Layout and Styling:
     •    Setting up the layout, styling, and appearance of UI components.
     •    Example: Auto Layout constraints, setting colors and fonts.
     3.    User Interaction:
     •    Handling user input and events, often by delegating to the ViewModel.
     •    Example: Button actions, gesture recognizers.
 */

//MARK: ViewModel
/*
 The ViewModel acts as an intermediary between the Model and the View. It is responsible for:

     1.    Data Binding:
     •    Exposing data from the Model in a form that the View can observe and bind to.
     •    Example: Observable properties, publishers.
     2.    View Logic:
     •    Transforming and formatting data for display in the View.
     •    Example: Converting raw dates into formatted strings.
     3.    Handling User Actions:
     •    Receiving input from the View and updating the Model or performing actions.
     •    Example: Fetching data from a service when a button is pressed.
     4.    State Management:
     •    Managing the state of the View, such as loading indicators or error messages.
     •    Example: isLoading, errorMessage.
 */


/*
 Two ways to approach a MVVM

Either direct MVVM OR through Features -> MVVM Or V
*/
