//
//  Daitails.swift
//  WdNews
//
//  Created by Yassine AADOULI on 1/12/20.
//  Copyright © 2020 Yassine AADOULI. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailsView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}


struct Daitails_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url:"")
    }
}
