//
//  ViewModelBase.swift
//  HatchWorks
//
//  Created by Roy Quesada on 13/3/24.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
