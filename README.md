# Shopper

Shopper is a Ruby project created for the purpose of learning Rails and also as a project for Shopify's Backend Intern application.

## Setup

Start a Rails server to open the project UI
.

```bash
$ rails s
```

## Usage

### 1. Main view
Opening up port `3000` of your local host on a web browser, you will be introduced to the home page of the Shopper application.
```python
http://localhost:3000/
```
![Image](https://i.imgur.com/hJ6a571.png)

### 2. Adding to cart
To add items to Cart, increase the quantity next to the product and click on `Add to Cart`. To view the Cart, click on the `x Items in Cart ($x.xx)` at the top right of the Main view.
![Image](https://i.imgur.com/5ySKh6W.png)

### 3. Cart view
![Image](https://i.imgur.com/sfPrynb.png)
The Cart view allows you to update the quantity of the product you wish to purchase, as well as delete the product off of your Cart. 

Items can be purchased by clicking on the `Purchase` button and accepting the prompt. Purchasing products will reduce the inventory of those products. 

![Image](https://i.imgur.com/Qs5PA5F.png)

### 4. Changing the products
The products are created by populating the Database with `seeds.rb`. The values in this file can be changed and populated into the Database to update the products, their inventory and their price.
To refresh the Database after editing the `seeds.rb` file, run the following commands:
```bash
$ rails db:reset
$ rails db:seed
$ rails db:migrate
```
*If you're using a Rails version below 5.0, replace `rails` with `rake`
