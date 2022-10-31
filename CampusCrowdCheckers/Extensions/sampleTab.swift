//With this, see if you can implement it into the project we have now.
//If you can change the tab bar color to grey or black, I think that would be cool
//If you figure out the icon colors, I think a dark purple (like in the code below) would be sick too.
//I think the home should be what we have so far

import SwiftUI
//chat
struct ChatView: View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.gray
            }
            .navigationTitle("Chat")
        }
    }
}
//home
struct HomeView: View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.red
            }
            .navigationTitle("Home")
        }
    }
}

//FAQ
struct faqView: View{
    var body: some View{
        NavigationView{
            ZStack{
                //Color.blue
                Text("Test Text")

            }
            .navigationTitle("FAQ")
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView{
           ChatView()
                .tabItem{
                    Image(systemName: "bubble.left.fill")
                    Text("Chat")
                }
            
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
        
            faqView()
                .tabItem{
                    Image(systemName: "questionmark.circle")
                    Text("FAQ")
                }
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
