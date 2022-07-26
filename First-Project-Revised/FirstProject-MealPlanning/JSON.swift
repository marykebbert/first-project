//
//  JSON.swift
//  FirstProject-MealPlanning
//
//  Created by HLC on 7/19/22.
//

import Foundation

let JSON = """
[
    {
        "name": "Crock Pot Roast",
        "ingredients": [
            {
                "quantity": "1",
                "name": "beef roast",
                "type": "Meat"
            },
            {
                "quantity": "1 package",
                "name": "brown gravy mix",
                "type": "Baking"
            },
            {
                "quantity": "1 package",
                "name": "dried Italian salad dressing mix",
                "type": "Condiments"
            },
            {
                "quantity": "1 package",
                "name": "dry ranch dressing mix",
                "type": "Condiments"
            },
            {
                "quantity": "1/2 cup",
                "name": "water",
                "type": "Drinks"
            }
        ],
        "steps": [
            "Place beef roast in crock pot.",
            "Mix the dried mixes together in a bowl and sprinkle over the roast.",
            "Pour the water around the roast.",
            "Cook on low for 7-9 hours."
        ],
        "timers": [
            0,
            0,
            0,
            420
        ],
        "imageURL": "http://img.sndimg.com/food/image/upload/w_266/v1/img/recipes/27/20/8/picVfzLZo.jpg",
        "originalURL": "https://www.food.com/recipe/to-die-for-crock-pot-roast-27208"
    },
    {
        "name": "Roasted Asparagus",
        "ingredients": [
            {
                "quantity": "1 lb",
                "name": "asparagus",
                "type": "Produce"
            },
            {
                "quantity": "1 1/2 tbsp",
                "name": "olive oil",
                "type": "Condiments"
            },
            {
                "quantity": "1/2 tsp",
                "name": "kosher salt",
                "type": "Baking"
            }
        ],
        "steps": [
            "Preheat oven to 425°F.",
            "Cut off the woody bottom part of the asparagus spears and discard.",
            "With a vegetable peeler, peel off the skin on the bottom 2-3 inches of the spears (this keeps the asparagus from being all stringy, and if you eat asparagus you know what I mean by that).",
            "Place asparagus on foil-lined baking sheet and drizzle with olive oil.",
            "Sprinkle with salt.",
            "With your hands, roll the asparagus around until they are evenly coated with oil and salt.",
            "Roast for 10-15 minutes, depending on the thickness of your stalks and how tender you like them.",
            "They should be tender when pierced with the tip of a knife.",
            "The tips of the spears will get very brown but watch them to prevent burning.",
            "They are great plain, but sometimes I serve them with a light vinaigrette if we need something acidic to balance out our meal."
        ],
        "timers": [
            0,
            0,
            0,
            0,
            0,
            0,
            10,
            0,
            0,
            0
        ],
        "imageURL": "https://img.sndimg.com/food/image/upload/w_266/v1/img/recipes/50/84/7/picMcSyVd.jpg",
        "originalURL": "https://www.food.com/recipe/roasted-asparagus-50847"
    },
    {
        "name": "Cranberry and Apple Stuffed Acorn Squash Recipe",
        "ingredients": [
            {
                "quantity": "2",
                "name": "acorn squash",
                "type": "Produce"
            },
            {
                "quantity": "1",
                "name": "boiling water",
                "type": "Drinks"
            },
            {
                "quantity": "2",
                "name": "apples chopped into 1.4 inch pieces",
                "type": "Produce"
            },
            {
                "quantity": "1/2 cup",
                "name": "dried cranberries",
                "type": "Produce"
            },
            {
                "quantity": "1 teaspoon",
                "name": "cinnamon",
                "type": "Baking"
            },
            {
                "quantity": "2 tablespoons",
                "name": "melted butter",
                "type": "Dairy"
            }
        ],
        "steps": [
            "Cut squash in half, remove seeds.",
            "Place squash in baking dish, cut-side down.",
            "Pour 1/4-inch water into dish.",
            "Bake for 30 minutes at 350 degrees F.",
            "In large bowl, combine remaining ingredients.",
            "Remove squash from oven, fill with mix.",
            "Bake for 30-40 more minutes, until squash tender.",
            "Enjoy!"
        ],
        "timers": [
            0,
            0,
            0,
            30,
            0,
            0,
            30,
            0
        ],
        "imageURL": "https://elanaspantry.com/wp-content/uploads/2008/10/acorn_squash_with_cranberry.jpg",
        "originalURL": "https://www.food.com/recipe/acorn-squash-with-cranberry-apple-stuffing-330611"
    },
    {
        "name": "Blueberry Oatmeal Squares",
        "ingredients": [
            {
                "quantity": "2-1/2 cups",
                "name": "rolled oats, (not instant)",
                "type": "Baking"
            },
            {
                "quantity": "1-1/4 cups",
                "name": "all-purpose flour",
                "type": "Baking"
            },
            {
                "quantity": "1 tbsp",
                "name": "grated orange rind",
                "type": "Produce"
            },
            {
                "quantity": "1/4 tsp",
                "name": "salt",
                "type": "Baking"
            },
            {
                "quantity": "1 cup",
                "name": "cold butter, cubed",
                "type": "Baking"
            },
            {
                "quantity": "3/4 cup",
                "name": "packed brown sugar",
                "type": "Baking"
            },
            {
                "quantity": "3 cups",
                "name": "fresh blueberries",
                "type": "Produce"
            },
            {
                "quantity": "1/2 cup",
                "name": "granulated sugar",
                "type": "Baking"
            },
            {
                "quantity": "1/3 cup",
                "name": "orange juice",
                "type": "Produce"
            },
            {
                "quantity": "4 tsp",
                "name": "cornstarch",
                "type": "Baking"
            }
        ],
        "steps": [
            "Filling: In saucepan, bring blueberries, sugar and orange juice to boil; reduce heat and simmer until tender, about 10 minutes.",
            "Whisk cornstarch with 2 tbsp (25 mL) water; whisk into blueberries and boil, stirring, until thickened, about 1 minute.",
            "Place plastic wrap directly on surface; refrigerate until cooled, about 1 hour.",
            "In large bowl, whisk together oats, flour, sugar, orange rind and salt ; with pastry blender, cut in butter until in coarse crumbs.",
            "Press half into 8-inch (2 L) square parchment paper–lined metal cake pan; spread with blueberry filling.",
            "Bake in centre of 350°F oven until light golden, about 45 minutes.",
            "Let cool on rack before cutting into squares.",
            "(Make-ahead: Cover and refrigerate for up to 2 days or overwrap with heavy-duty foil and freeze for up to 2 weeks.)"
        ],
        "timers": [
            10,
            1,
            60,
            0,
            0,
            45,
            0,
            0
        ],
        "imageURL": "https://www.canadianliving.com/img/photos/biz/blueberry-oatmeal-squares5801359401371.jpg",
        "originalURL": "https://www.canadianliving.com/food/blueberry_oatmeal_squares.php"
    },
    {
        "name": "Curried chicken salad",
        "ingredients": [
            {
                "quantity": "3",
                "name": "skinless, boneless chicken breasts, halved lengthwise",
                "type": "Meat"
            },
            {
                "quantity": "1/2 cup",
                "name": "mayonnaise",
                "type": "Baking"
            },
            {
                "quantity": "1 tbsp",
                "name": "lemon zest",
                "type": "Produce"
            },
            {
                "quantity": "1 tbsp ",
                "name": "lemon juice",
                "type": "Produce"
            },
            {
                "quantity": "1 1/2 tsp",
                "name": "curry powder",
                "type": "Baking"
            },
            {
                "quantity": "1/4 tsp",
                "name": "salt",
                "type": "Baking"
            },
            {
                "quantity": "2",
                "name": "ripe mangoes, diced",
                "type": "Produce"
            },
            {
                "quantity": "1/4 cup",
                "name": "dried cranberries",
                "type": "Produce"
            },
            {
                "quantity": "2",
                "name": "green onions, thinly sliced",
                "type": "Produce"
            },
            {
                "quantity": "1",
                "name": "celery stalk, finely chopped",
                "type": "Produce"
            },
            {
                "quantity": "6 leaves",
                "name": "Boston lettuce",
                "type": "Produce"
            },
            {
                "quantity": "6",
                "name": "English muffins, toasted",
                "type": "Misc"
            }
        ],
        "steps": [
            "ARRANGE chicken in a single layer in a large pot.",
            "Add water to just cover.",
            "Bring to a boil over medium-high.",
            "Flip chicken, reduce heat to medium and simmer until cooked, about 6 more min.",
            "Cool.",
            "STIR mayo with lemon zest, juice, curry and salt in large bowl.",
            "Using 2 forks, shred chicken, then stir into mayo mixture with mango, cranberries, green onions and celery.",
            "Divide among muffins with lettuce leaves",
            "Sandwich with tops"
        ],
        "timers": [
            0,
            0,
            0,
            6,
            0,
            0,
            0,
            0,
            0
        ],
        "imageURL": "https://www.chatelaine.com/wp-content/uploads/2013/05/Curried-chicken-salad.jpg",
        "originalURL": "https://www.chatelaine.com/recipe/stovetop-cooking-method/curried-chicken-salad/"
    }
]
"""
