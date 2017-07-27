# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Note.destroy_all
Notebook.destroy_all
Tag.destroy_all
Tagging.destroy_all

user1 = User.create!(email: "demo@appacademy.io", username: "demo", image_url: "https://res.cloudinary.com/malice/image/upload/c_scale,w_100/v1500414084/default-profile-pic_bhulg4.svg", password: "password");

user2 = User.create!(email: "alicechen118@gmail.com", username: "alice", image_url: "https://res.cloudinary.com/malice/image/upload/c_scale,w_100/v1500414084/default-profile-pic_bhulg4.svg", password: "password");

notebook1 = Notebook.create!(title: "App Academy", description: "Software Development", author_id: user1.id)

notebook2 = Notebook.create!(title: "Shopping Lists", description: "", author_id: user1.id)

notebook3 = Notebook.create!(title: "To-Dos", description: "Random to-do lists", author_id: user1.id)

notebook4 = Notebook.create!(title: "Gym", description: "Workout routines", author_id: user1.id)

note1 = Note.create!(title: "React", body: "React is the entry point to the React library. If you load React from a <script> tag, these top-level APIs are available on the React global. If you use ES6 with npm, you can write import React from 'react'. If you use ES5 with npm, you can write var React = require('react').", plain_text_body: "React is the entry point to the React library. If you load React from a <script> tag, these top-level APIs are available on the React global. If you use ES6 with npm, you can write import React from 'react'. If you use ES5 with npm, you can write var React = require('react').", author_id: user1.id, notebook_id: notebook1.id)

note2 = Note.create!(title: "React Component", body: "Components let you split the UI into independent, reusable pieces, and think about each piece in isolation. React.Component is provided by React. Each component has several 'lifecycle methods' that you can override to run code at particular times in the process. Methods prefixed with will are called right before something happens, and methods prefixed with did are called right after something happens.", plain_text_body: "Components let you split the UI into independent, reusable pieces, and think about each piece in isolation. React.Component is provided by React. Each component has several 'lifecycle methods' that you can override to run code at particular times in the process. Methods prefixed with will are called right before something happens, and methods prefixed with did are called right after something happens.", author_id: user1.id, notebook_id: notebook1.id)

note3 = Note.create!(title: "React DOM", body: "The react-dom package provides DOM-specific methods that can be used at the top level of your app and as an escape hatch to get outside of the React model if you need to. Most of your components should not need to use this module. Render a React element into the DOM in the supplied container and return a reference to the component (or returns null for stateless components). If the React element was previously rendered into container, this will perform an update on it and only mutate the DOM as necessary to reflect the latest React element. If the optional callback is provided, it will be executed after the component is rendered or updated.", plain_text_body: "The react-dom package provides DOM-specific methods that can be used at the top level of your app and as an escape hatch to get outside of the React model if you need to. Most of your components should not need to use this module. Render a React element into the DOM in the supplied container and return a reference to the component (or returns null for stateless components). If the React element was previously rendered into container, this will perform an update on it and only mutate the DOM as necessary to reflect the latest React element. If the optional callback is provided, it will be executed after the component is rendered or updated.", author_id: user1.id, notebook_id: notebook1.id)

note4 = Note.create!(title: "Shopping List #1", body: "Canned vegetables
Canned fruit (canned in juice, if available)
Canned beans
Fat-free refried beans
Canned tuna or salmon
Instant oatmeal or quick oats
Whole grain cereal (unsweetened)
Brown rice or other whole grains (such as quinoa, bulgur, or whole grain barley)
Pasta (try whole wheat)
100% whole wheat bread or pita bread
Dried fruit
Unsalted nuts
Natural peanut butter or another nut butter
Seeds (sunflower, flax)
Popcorn (light, microwave)
Potatoes (white or sweet)
Spaghetti sauce", plain_text_body: "Canned vegetables
Canned fruit (canned in juice, if available)
Canned beans
Fat-free refried beans
Canned tuna or salmon
Instant oatmeal or quick oats
Whole grain cereal (unsweetened)
Brown rice or other whole grains (such as quinoa, bulgur, or whole grain barley)
Pasta (try whole wheat)
100% whole wheat bread or pita bread
Dried fruit
Unsalted nuts
Natural peanut butter or another nut butter
Seeds (sunflower, flax)
Popcorn (light, microwave)
Potatoes (white or sweet)
Spaghetti sauce", author_id: user1.id, notebook_id: notebook2.id)

note5 = Note.create!(title: "Shopping List #2", body: "Balsamic vinegar or other vinegars that you cook with (for example, white wine, rice, or cider vinegar)
Pepper
Salt-free spices – your favorites
Salt-free dried herbs or spice blends
Cooking spray
Vegetable oil
Olive oil", plain_text_body: "Balsamic vinegar or other vinegars that you cook with (for example, white wine, rice, or cider vinegar)
Pepper
Salt-free spices – your favorites
Salt-free dried herbs or spice blends
Cooking spray
Vegetable oil
Olive oil", author_id: user1.id, notebook_id: notebook2.id)

note6 = Note.create!(title: "Shopping List #3", body: "Fresh fruit (a few of your favorites)
Fresh vegetables (a few of your favorites - focus mostly on non-starchy vegetables)
Skim milk, 1% low-fat milk, or unsweetened soy milk (whatever you prefer)
Nonfat or low-fat yogurt
Eggs or egg substitute
Cottage cheese
Reduced-fat cheese
Fresh meat, poultry, or fish that you'll use in the next few days
Trans-free margarine or margarine with plant sterols or stanols", plain_text_body: "Fresh fruit (a few of your favorites)
Fresh vegetables (a few of your favorites - focus mostly on non-starchy vegetables)
Skim milk, 1% low-fat milk, or unsweetened soy milk (whatever you prefer)
Nonfat or low-fat yogurt
Eggs or egg substitute
Cottage cheese
Reduced-fat cheese
Fresh meat, poultry, or fish that you'll use in the next few days
Trans-free margarine or margarine with plant sterols or stanols", author_id: user1.id, notebook_id: notebook2.id)

tag1 = Tag.create!(name: "school", author_id: user1.id)
tag2 = Tag.create!(name: "travel", author_id: user1.id)
tag3 = Tag.create!(name: "work", author_id: user1.id)
tag4 = Tag.create!(name: "shop", author_id: user1.id)

tagging1 = Tagging.create!(note_id: note1.id, tag_name: tag1.name)
tagging2 = Tagging.create!(note_id: note2.id, tag_name: tag1.name)
tagging3 = Tagging.create!(note_id: note3.id, tag_name: tag1.name)
tagging4 = Tagging.create!(note_id: note4.id, tag_name: tag4.name)
tagging5 = Tagging.create!(note_id: note5.id, tag_name: tag4.name)
tagging6 = Tagging.create!(note_id: note6.id, tag_name: tag4.name)
