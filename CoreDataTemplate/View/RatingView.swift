//
//  RatingView.swift
//  CoreDataTemplate
//
//  Created by Dmytro Ivanenko on 24.10.2022.
//

import SwiftUI

struct RatingView: View {
    
    //MARK: - PROPERTY
    
    @Binding var rating: Int
    
    let label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    
    //MARK: - BODY

    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = number
                    }
            }
        }
    }
    
    func image(for number: Int) -> Image {
        if number < rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

//MARK: - PREVIEW

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(4))
    }
}
