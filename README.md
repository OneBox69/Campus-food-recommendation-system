# Campus Restaurant Recommendation System 🍔🎓

## 📌 Overview

A JavaFX-based application that recommends meals for campus students
based on their preferences, budget, and dietary needs.
This project demonstrates clean architecture (DAO, Service, Presentation layers)
and can be extended into a full recommendation engine.

## Notes

- Scope of F&B from CBDs and filter out one or two restaurants.  (look from Meituan)
- Build using Java - website
- Instead of exact keyword search, use **NLP** to handle natural language.
    - Example: A user types *“cheap spicy noodles near dorm”* → system extracts *[cheap, spicy, noodles, location: dorm]*.
- Tools: Simple keyword extraction in Java (Stanford NLP) or pretrained models.

## 🚀 Features

- View meals with images
- Search and filter meals
    - Database includes: Price + distance + rating + cuisine preference + name
    - Filter results include first choice + second choice + third choice
- Save user preferences
- Basic meal recommendation system
    - Look at user’s past searches and recommend past + new shops
- (Planned) Ratings & feedback
- Show the location on the school map and the distance
- Login + encryption
- Error handling

## 🛠 Tech Stack

- Java + HTML + CSS
