//
//  URL+Extensions.swift
//  HatchWorks
//
//  Created by Roy Quesada on 13/3/24.
//

import Foundation

extension URL{
    
    static func forMoviesByName(_ name: String) -> URL?{
        return URL(string: "https://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
    
    static func forMoviesByImdbId(_ imdbId:String) -> URL?{
        return URL(string: "https://www.omdbapi.com/?i=\(imdbId)&apikey=\(Constants.API_KEY)")
    }
}

