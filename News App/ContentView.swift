//
//  ContentView.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-01.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = HomeModelView()

    var body: some View {
        HomeView(viewModel: viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
