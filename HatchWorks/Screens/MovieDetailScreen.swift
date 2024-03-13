//
//  MovieDetailScreen.swift
//  HatchWorks
//
//  Created by Roy Quesada on 13/3/24.
//

import SwiftUI

struct MovieDetailScreen: View {
    
    let imdbId: String
    @ObservedObject var movieDetailVM = MovieDetailViewModel()
    
    var body: some View {
        VStack{
            
            if movieDetailVM.loadingState == .loading {
                LoadingView()
            }else if movieDetailVM.loadingState == .success {
                MovieDetailView(movieDetailVM: movieDetailVM)
            }else if movieDetailVM.loadingState == .failed {
                FailedView()
            }
        }
        
        .onAppear(){
            self.movieDetailVM.getDetailsByImdb(imdb: self.imdbId)
        }
    }
}
