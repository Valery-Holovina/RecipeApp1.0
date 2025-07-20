//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import Foundation
import PhotosUI

enum Category: String, CaseIterable, Identifiable{
    var id : String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salat = "Salat"
    case main = "Main"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable{
    let id = UUID()
    let name:String
    let image: String?
    let loadedImage: UIImage?
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Mushroom Ragout with Herbed Ricotta & Pappardelle",
            image: "mushroom-ragout-with-herbed-ricotta-and-pappardelle-6087e9761a8541f7a5af6755e55821bd", loadedImage: nil,
            description: "This mushroom ragout is topped with dollops of ricotta, which cut through the acidity of the tomato-based sauce for a balanced flavor and creamy texture.",
            ingredients: "3 tablespoons extra-virgin olive oil\n1 pound mixed mushrooms, such as maitake, shiitake, oyster and/or cremini, trimmed and halved\n1 medium onion, chopped\n3 cloves garlic, grated, divided\n1 teaspoon chopped fresh thyme\n1 tablespoon tomato paste\n¾ teaspoon salt\n½ teaspoon ground pepper, divided\n¼ cup dry white wine\n1 (15 ounce) can no-salt-added diced tomatoes\n½ cup part-skim ricotta cheese\n¼ cup chopped fresh herbs, such as tarragon and/or parsley, plus more for garnish\n8 ounces pappardelle pasta, preferably whole-wheat",
            directions: "Put a large pot of water on to boil.\n\nHeat oil in a large skillet over medium-high heat. Add mushrooms and cook, stirring once, until browned, about 4 minutes.\n\nAdd onion, two-thirds of the garlic and thyme; cook, stirring occasionally, until the onion is translucent, about 3 minutes.\n\nAdd tomato paste, salt and 1/4 teaspoon pepper and cook, stirring, for 1 minute.\n\nStir in wine and tomatoes and bring to a simmer. Cover and cook for 5 minutes.\n\nMeanwhile, combine ricotta, herbs, the remaining garlic and 1/4 teaspoon pepper in a small bowl.\n\nCook pasta in the boiling water according to package directions. Using tongs or a slotted spoon, transfer the pasta directly to the skillet, allowing some of the pasta-cooking water to drip into the pan.\n\nCook, stirring, until the pasta is coated with the sauce, about 1 minute.\n\nServe the pasta topped with the ricotta mixture and more herbs, if desired.",
            category: "Main",
            datePublished: "2021-05-11"
        ),
        Recipe(
            name: "Ricotta-Stuffed Portobello Mushrooms with Arugula Salad",
            image: "7972031-5c476f8629054065823752c159aa078d",loadedImage: nil,
            description: "This mushroom ragout is topped with dollops of ricotta, which cut through the acidity of the tomato-based sauce for a balanced flavor and creamy texture.",
            ingredients: "4 large portobello mushroom caps (about 1 pound total), gills removed if desired\n3 tablespoons extra-virgin olive oil, divided\n½ teaspoon salt plus a pinch, divided\n½ teaspoon ground pepper plus a pinch, divided\n1 cup part-skim ricotta cheese\n¼ cup chopped fresh basil, plus more for garnish\n¼ cup grated Parmesan cheese\n3 cups baby arugula\n½ cup slivered sun-dried tomatoes\n2 tablespoons lemon juice",
            directions: "Preheat grill to medium-high.\n\nBrush mushrooms with 1 tablespoon oil and sprinkle with 1/4 teaspoon each salt and pepper.\n\nGrill, gill-side up, for 5 minutes. Flip and continue grilling until tender, 6 to 10 minutes more.\n\nMeanwhile, mix ricotta, basil, Parmesan and 1/4 teaspoon each salt and pepper in a small bowl.\n\nTransfer the mushrooms to a plate and blot with paper towels to remove any liquid.\n\nMound the ricotta filling in the caps. Grill until the filling is hot, 5 to 7 minutes.\n\nToss arugula and sun-dried tomatoes in a medium bowl with lemon juice and the remaining 2 tablespoons oil and pinch each of salt and pepper.\n\nServe the salad with the mushrooms. Garnish with more basil, if desired.",
            category: "Salat",
            datePublished: "2020-05-14"
        ),
        Recipe(
            name: "Creamy Chicken & Mushroom Soup",
            image: "Creamy-Chicken-Mushroom-Soup-125f9c8994f94798aa9d004df8916d23",loadedImage: nil,
            description: "This creamy chicken and mushroom soup is easy to make. The mix of vegetables and thyme adds richness, while the bone-in chicken flavors the broth. If you're in a hurry, you can skip the chicken breasts and add rotisserie chicken at the end instead.",
            ingredients: "2 ½ pounds bone-in, skin-on chicken breasts (about 2 split breasts)\n24 ounces fresh mixed mushrooms, sliced\n1 ½ cups chopped yellow onion\n1 cup sliced carrots\n2 tablespoons minced garlic\n1 ½ tablespoons chopped fresh thyme or 2 teaspoons dried thyme\n3 tablespoons all-purpose flour\n3 cups whole milk\n2 cups unsalted chicken broth\n¾ teaspoon salt\n½ cup frozen peas",
            directions: "Cook chicken, skin-side down, in a large heavy pot over medium-high heat until the skin is golden brown and the fat has rendered, about 6 minutes.\n\nTransfer the chicken to a plate; remove and discard the skin.\n\nAdd mushrooms and onion to the drippings in the pot; cook over medium-high heat, stirring occasionally, until the mushrooms are browned and the onion is softened, about 7 minutes.\n\nAdd carrots, garlic and thyme; cook, stirring constantly, until fragrant, about 1 minute.\n\nAdd flour; cook, stirring constantly, until toasted, about 1 minute.\n\nAdd milk, broth and salt; stir to combine.\n\nNestle the chicken into the mixture. Bring to a boil over high heat; reduce heat to maintain a simmer.\n\nCook until an instant-read thermometer inserted into the thickest portion of the chicken registers 165 degrees F, 20 to 25 minutes. (Do not remove from heat.)\n\nTransfer the chicken to a cutting board; let rest for 5 minutes.\n\nShred the meat into bite-size pieces; discard bones.\n\nStir the shredded chicken and peas into the soup.\n\nServe hot.",
            category: "Soup",
            datePublished: "2020-10-09"
        ),
        Recipe(
            name: "Bircher Muesli",
            image: "bircher-muesli-8039257-4000x4000-b007aad2b4bc4b9895924f90f33faf41",loadedImage: nil,
            description: "Named after a Swiss physician, Bircher muesli features fresh apple, lemon juice and nuts. We added to this refreshing combo by including chia seeds for a boost of omega-3 fatty acids and fiber, and we finish our version with a mix of fresh berries for color and flavor.",
            ingredients: "1 ½ cups old-fashioned rolled oats (see Tip)\n1 ½ cups unsweetened almond milk\n1 ¼ cups whole-milk plain yogurt\n1 medium Fuji apple, unpeeled, cored and grated (1 cup)\n¼ cup chia seeds\n4 dried figs, chopped\n3 tablespoons fresh lemon juice\n¼ teaspoon ground cinnamon\n1 ½ cups mixed fresh berries (such as blueberries, blackberries and strawberries)\n¼ cup slivered almonds\nHoney for serving (optional)",
            directions: "Stir oats, almond milk, yogurt, apple, chia seeds, figs, lemon juice and cinnamon together in a large bowl until well blended.\n\nPortion 1 cup of the mixture into each of 4 (16-ounce) containers, and cover each with a tight-fitting lid or plastic wrap.\n\nRefrigerate until the oats soften, at least 8 hours or up to 5 days.\n\nTo serve, top with berries and almonds. Drizzle with honey, if desired.\n\nTo make ahead\nPrepare through Step 1 and refrigerate for up to 5 days. Top with berries and almonds just before serving.\n\nTip\nPeople with celiac disease or gluten sensitivity should use oats that are labeled gluten-free, as oats are often cross-contaminated with wheat and barley.",
            category: "Breakfast",
            datePublished: "2023-04-08"
        ),
        Recipe(
            name: "Pumpkin Trifle",
            image: "EWL-PumpkinTrifle-Beauty-390_preview_maxWidth_4000_maxHeight_4000_ppi_300_quality_100-52bfbd73e11c4138a7f61ac07286ad75",loadedImage: nil,
            description: "We think this pumpkin trifle is the best dessert you’ll enjoy this fall, combining layers of pumpkin spice-flavored cake and a creamy pumpkin filling that captures the season perfectly. As a time-saving shortcut, we use vanilla pudding mixed with canned pumpkin and pumpkin pie spice for the filling, making it both easy to prepare and delicious. This festive dessert is sure to be a hit for the holidays or at any autumn gathering!",
            ingredients: "Baking spray\n¾ cup all-purpose flour\n½ cup whole-wheat flour\n3 teaspoons pumpkin pie spice, divided\n1 teaspoon baking powder\n½ teaspoon baking soda\n¼ teaspoon salt\n¾ cup packed dark brown sugar\n¾ cup unsweetened cinnamon applesauce\n2 large eggs\n6 tablespoons neutral oil, such as canola or avocado\n1 teaspoon vanilla extract\n1 (15-ounce) can pumpkin puree\n1 (3.4-ounce) package vanilla instant pudding and pie filling\n1¼ cups whole milk\n2 tablespoons pure maple syrup, divided\n1 cup heavy cream\n2 tablespoons chopped pecans, toasted",
            directions: "Preheat oven to 350°F. Coat an 8-inch-square baking pan with baking spray.\n\nWhisk ¾ cup all-purpose flour, ½ cup whole-wheat flour, 2 teaspoons pumpkin pie spice, 1 teaspoon baking powder, ½ teaspoon baking soda and ¼ teaspoon salt together in a medium bowl until well combined.\n\nIn another medium bowl, combine ¾ cup brown sugar, ¾ cup applesauce, 2 eggs, 6 tablespoons oil and 1 teaspoon vanilla. Gradually whisk the egg mixture into the flour mixture until just combined.\n\nPour the batter into the prepared pan, spreading into an even layer.\n\nBake until a wooden pick inserted in the center comes out clean and the center looks set, 20 to 25 minutes.\n\nLet cool in the pan on a wire rack until room temperature, about 1 hour.\n\nMeanwhile, place 1 (15-ounce) can pumpkin puree, 1 (3.4-ounce) package pudding mix, 1¼ cups whole milk, 1 tablespoon maple syrup and the remaining 1 teaspoon pumpkin pie spice in a medium bowl;\n\nBeat with an electric mixer on medium-low speed until fully combined, 1 to 2 minutes. Cover and refrigerate until ready to use.\n\nWhen the cake has cooled, place 1 cup heavy cream in a medium bowl;\n\nBeat with an electric mixer on medium-high speed until just starting to thicken, about 2 minutes.\n\nAdd the remaining 1 tablespoon maple syrup; beat until medium-stiff peaks form, about 1 minute.\n\nRemove the cooled cake from the pan, cut into 1-inch cubes.\n\nSpread about ¾ cup pumpkin mixture in an even layer on the bottom of a medium (5-quart) trifle dish.\n\nTop with about 2¼ cups cake cubes; repeat the layers once.\n\nTop with about ¾ cup whipped cream mixture, spreading in an even layer.\n\nRepeat the layers once more with the remaining pumpkin mixture, cake and whipped cream.\n\nSprinkle with toasted pecans.",
            category: "Dessert",
            datePublished: "2024-10-11"
        ),
        Recipe(
                name: "Golden-Milk Shake",
                image: "110524-EatingWell_Golden-Milk-Milkshake-330-7c9d5fccdf2248d8bcce2df3319f2b4f",loadedImage: nil,
                description: "This golden-milk shake is a creamy, vibrant beverage that combines the traditional spices of golden milk with the natural sweetness of banana. At the heart of this nourishing milkshake is turmeric, known for its anti-inflammatory and antioxidant properties. Enjoy this milkshake as a post-dinner dessert.",
                ingredients: "1 medium banana, sliced and frozen\n⅔ cup reduced-fat milk (2%)\n1 teaspoon vanilla extract\n¾ teaspoon ground turmeric, plus more for garnish\n⅛ teaspoon ground cinnamon\n⅛ teaspoon ground pepper",
                directions: "Add frozen banana slices, ⅔ cup milk, 1 teaspoon vanilla, ¾ teaspoon turmeric and ⅛ teaspoon each cinnamon and pepper to a blender.\n\nProcess until smooth, about 45 seconds.\n\nPour into a glass.\n\nGarnish with additional turmeric, if desired.",
                category: "Drink",
                datePublished: "2024-12-12"
            ),
        Recipe(
            name: "Peach-Oatmeal Breakfast Bars",
            image: "Peach-Oatmeal-Breakfast-Bars-Beauty---556_preview-0b8ea2421ffe4e559b62534aca645c14",loadedImage: nil,
            description: "Peach-oatmeal bars are the perfect way to start your day, or enjoy them as a midday snack. Made with fiber-rich oats, ripe peaches and a touch of brown sugar, these bars hold together beautifully, making them the perfect thing to grab during the dash out the door.",
            ingredients: "2 medium peaches, chopped (about 2½ cups)\n6 tablespoons dark brown sugar, divided\n1 tablespoon lemon juice\n¾ teaspoon salt, divided\n⅔ cup whole milk\n2 large eggs\n1 tablespoon chia seeds\n1 tablespoon vanilla extract\n½ teaspoon baking powder\n½ teaspoon ground cinnamon\n½ teaspoon ground cardamom\n2½ cups old-fashioned rolled oats",
            directions: "Combine chopped peaches, 1½ tablespoons brown sugar, 1 tablespoon lemon juice and ¼ teaspoon salt in a small saucepan.\n\nCook over medium heat, stirring occasionally, until starting to gently simmer. Reduce heat to medium-low and continue to cook, stirring occasionally, until the peaches have softened and released juices, about 12 minutes.\n\nTransfer to a small heatproof bowl and let cool to room temperature, about 30 minutes.\n\nMeanwhile, preheat oven to 375°F. Lightly coat an 8-inch-square baking pan with cooking spray.\n\nWhisk ⅔ cup milk, 2 eggs, 1 tablespoon chia seeds, 1 tablespoon vanilla, ½ teaspoon each baking powder, cinnamon and cardamom, and the remaining 4½ tablespoons brown sugar and ½ teaspoon salt in a large bowl until combined.\n\nFold 2½ cups oats into the milk mixture until combined.\n\nSpoon about half (about 1 cup) of the oat mixture into the prepared pan; spread in an even layer.\n\nSpoon 1 cup of the peach mixture over the oat mixture; spread the remaining oat mixture over the peaches. Top with the remaining ½ cup peach mixture.\n\nBake until just set in the center and golden brown on top, 25 to 30 minutes.\n\nLet cool in the pan on a wire rack for 5 minutes before slicing.",
            category: "Snack",
            datePublished: "2025-01-05"
        )

    ]
}


