# SwiftUI

SwiftUI reference projects, Beginner to Advance.

1. Async Image - Shows how async image can be used with different constructors like,
    scale: by default is 1, 
    transition: to add an animation, 
    content: Image, gives the image fetched from url
    content: AsyncImagePhase, can be switched upon success, failure and empty cases. AsyncImagePhase is a non frozen enum and can have future cases that need to be handled with an @unknown default to make the code future proof.
