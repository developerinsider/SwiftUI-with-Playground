//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport

struct User {
    let name : String
    let details : String
    let image : String
    
    var id : String {
        return "\(name)\(details)"
    }
}

struct UserListView : View {
    @State var users: [User]
    
    var body : some View {
        NavigationView {
            List {
                ForEach(users.identified(by: \.id)) { user in
                    CellView(user: user)
                }
            }.navigationBarTitle(Text("Team iOS & Xamarin"))
        }
    }
}

struct CellView : View {
    let user: User
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.system(.headline, design: .monospaced))
                Text(user.details)
                    .font(.system(.body, design: .rounded))
            }
        }
    }
}

let users: [User] = [
    .init(name: "Vineet", details: "Team Lead - iOS & Xamarin", image: "cat"),
    .init(name: "Vikas", details: "Android & Xamarin Developer", image: "cat"),
    .init(name: "Mahesh", details: "iOS and Xamarin Developer", image: "cat"),
    .init(name: "Vineeta", details: "iOS Developer", image: "cat"),
    .init(name: "Vaibhav", details: "iOS Developer", image: "cat"),
    .init(name: "Prathibha", details: "Sr. iOS Developer", image: "cat"),
    .init(name: "Vivek", details: "iOS Developer", image: "cat"),
    .init(name: "Rakesh", details: "iOS Developer", image: "cat"),
    .init(name: "Sanjeev", details: "iOS Developer", image: "cat"),
    .init(name: "Taslime", details: "iOS Developer", image: "cat"),
    .init(name: "Pavneesh", details: "iOS Developer", image: "cat")
]


// Present the view controller in the Live View window
PlaygroundPage.current.liveView = UIHostingController(rootView: UserListView(users: users))
