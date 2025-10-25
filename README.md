# Campus Restaurant Recommendation System 🍔🎓

## 📌 Overview

A JavaFX-based application that recommends restaurant for campus students
based on their preferences adn location.
This project demonstrates clean architecture (DAO, Service, Presentation layers)
and can be extended into a full recommendation engine.

## Notes

- Scope of F&B from our school and filter out one or two restaurants.  (look from Meituan)
- Build using Java - website
- Instead of exact keyword search, use **NLP** to handle natural language.
    - Example: A user types *“cheap spicy noodles near dorm”* → system extracts *[cheap, spicy, noodles, location: dorm]*.
- Tools: Simple keyword extraction in Java (Stanford NLP) or pretrained models.

## 🚀 Features

- View meals with images
- Search and filter meals
    - Database includes: Price + distance + rating + cuisine preference + name +operating hour+location
    - Filter results include first choice +second choice+...n choice(if have)
- (Planned) Ratings & feedback
- Show the location on the school map and
- Calculate the distance between the user and the restaurant
- Login + encryption
- Error handling
- Favourite restaurant section - allow users to favourite restaurants, use that knowledge for suggesting restaurants as well.  
- Reviews - photo uploading + 5 star + different tags?


## 🛠 Tech Stack

- Java + HTML + CSS

https://docs.google.com/spreadsheets/d/17r_xPepRlxEt0EHtHF6j41vOq48ZuWlwJfK1ky5iqYY/edit?usp=sharing
