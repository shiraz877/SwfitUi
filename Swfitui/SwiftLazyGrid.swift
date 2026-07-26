//
//  SwiftLazyGrid.swift
//  Swfitui
//
//  Created by Shiraz on 26/07/26.
//

import SwiftUI

struct SwiftLazyGrid: View {
    let columns: [GridItem] = [
        GridItem(.flexible() ,spacing: nil,alignment: nil),
        GridItem(.flexible() ,spacing: nil,alignment: nil),
        GridItem(.flexible() ,spacing: nil,alignment: nil)
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                        .padding()
                    ){
                        ForEach(0..<50){item in
                            Rectangle()
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                        }
                    }
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .background(.red)
                        .cornerRadius(10)
                        .padding()
                    ){
                        ForEach(0..<50){item in
                            Rectangle()
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                        }
                    }
                }
            )
        }
    }
}

#Preview {
    SwiftLazyGrid()
}
