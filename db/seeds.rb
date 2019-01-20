Product.delete_all
Product.create! id: 1, name: "Cucumber", inventory_count: 5, price: 0.49, active: true
Product.create! id: 2, name: "Potato", inventory_count: 10, price: 0.29, active: true
Product.create! id: 3, name: "Grapes", inventory_count: 3, price: 3.99, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"