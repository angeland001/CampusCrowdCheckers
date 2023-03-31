//
//  ListView.swift
//  CampusCrowdCheckers
//
//  Created by Andres Angel on 4/2/23.
//

import Foundation
import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack{
            
            Color("Jenni")
                .ignoresSafeArea()
            VStack {
                ZStack(alignment: .top){
                    Wave(yOffset: -0.55)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 4)
                        .ignoresSafeArea()
                    
                    HStack{
                        Text("To Do")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(Color("Jenni"))
                            
                
                        Image(systemName: "list.clipboard")
                            .font(.system(size: 26))
                            .foregroundColor(Color("Jenni"))
                            
                        
                    }
                    
                }
            
                
                
                if listViewModel.items.isEmpty{
                    NoItemsView()
                        .transition(AnyTransition.opacity.animation(.easeIn))
                }else{
                    List{
                        ForEach(listViewModel.items){ item in
                            ListRowView(item: item)
                                .onTapGesture {
                                    withAnimation(.linear){
                                        listViewModel.updateItem(item: item)
                                    }
                                }
                            //this changes the color of the white space behind the list items
                                .listRowBackground(Color("NewBackground"))
                        }
                        .onDelete(perform: listViewModel.deleteItem)
                        .onMove(perform: listViewModel.moveItem)
                        .foregroundColor(Color.black)
                        .padding()
                        //makes the list items purple
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .listStyle(.plain)
                    
                }
                
            }
            .background(Color("NewBackground"))
//            .navigationBarItems(
//                leading: EditButton().foregroundColor(Color.black),
//                trailing:
//                    NavigationLink("Add", destination: AddView()).foregroundColor(Color.black)
//            )
            
        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}

struct listDone{
    
}
