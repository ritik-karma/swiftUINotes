//
//  webLink.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 12/08/24.
//

import SwiftUI

struct webLink: View {
    
    var body: some View {
        Link(destination: URL(string: "Visit the [Apple](https://www.apple.com/in/store?afid=p238%7Cs8Vs8GkTq-dc_mtid_187079nc38483_pcrid_708140887351_pgrid_112258962467_pntwk_g_pchan__pexid__ptid_kwd-10778630_&cid=aos-IN-kwgo-brand--slid---product-)" )!){
            Text("Apple")
        }
    }
}

#Preview {
    webLink()
}
