//
//  NewReleases.swift
//  TidalSwift
//
//  Created by Melvin Gundlach on 05.10.19.
//  Copyright © 2019 Melvin Gundlach. All rights reserved.
//

import SwiftUI
import TidalSwiftLib
import Grid

struct NewReleases: View {
	let session: Session
	let player: Player
	
	@EnvironmentObject var viewState: ViewState
	
	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Text("New Releases")
					.font(.largeTitle)
				Spacer()
				LoadingSpinner()
			}
			.padding(.horizontal)
			
			if viewState.stack.last?.albums != nil {
				AlbumGrid(albums: viewState.stack.last!.albums!, showArtists: true, showReleaseDate: true, session: session, player: player)
			}
			Spacer(minLength: 0)
		}
	}
}
