c1 = Category.create(name: "Personal Info")
c2 = Category.create(name: "Music")
c3 = Category.create(name: "Cinema")
c4 = Category.create(name: "Hobbies")
c5 = Category.create(name: "Career")

Criterium.create(category_id: c1.id, name: "Age")
Criterium.create(category_id: c1.id, name: "Hair Style")
Criterium.create(category_id: c1.id, name: "Favorite Color")

Criterium.create(category_id: c2.id, name: "Genders")
Criterium.create(category_id: c2.id, name: "Bands")

Criterium.create(category_id: c3.id, name: "Genders")
Criterium.create(category_id: c3.id, name: "Movies")

Criterium.create(category_id: c4.id, name: "Favorite sport")

Criterium.create(category_id: c5.id, name: "Job title")
Criterium.create(category_id: c5.id, name: "Years of experience")
Criterium.create(category_id: c5.id, name: "Job description")



