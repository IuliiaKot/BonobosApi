### BonobosAPI

This project has to parts: server side and client side.

To run:
1. First start with server side:

        1. Open a new tab in your terminal
        2. type in terminal and hit enter `git clone https://github.com/IuliiaKot/BonobosApi.git`
        3. type in terminal window `cd BonobosApi`
        4. run `bundle install`
        5. `rake db: drop rake db:create && rake db:migrate && rake db:seed`
        6. run server `rails s -p 8000`

2. Run client side:

        1. open terminal and run `git clone https://github.com/IuliiaKot/bonobos-client-side.git`
        2. type in terminal window `cd bonobos-client-side`
        3. type `yarn`
        4. type `yarn start`
        5. and go to this link `http://localhost:3000/`


  ## Description

  ### My Approach:
  1. explore CSV files and create a tables. load data to tables.
  2. create models and set association between tables.
  3. creating api for accessing data. I moved products_controller and inventories_controller under api subfolder. Currently I have two endpoints which return data in JSON object.
  
      - `/api/products` - to fetch all products
      - `api/products/:product_id/inventories` - to fetch inventories for specific products

    In the beginning, I had only one `/api/products` - which returned all products and all associated inventories for every product (I used active_model_serializers gem). But then I decided to have two different routes, instead of returning all information at once, get inventories only when this necessary.
    
  4. Tested api with Postman
  5. When server side was ready, started to build client-side.
  6. For the client side I decided to use React and make call to my api and display the date on screen.


  ## Improvements
  1. I will improve UI. For now, it's just list of products and inventories. The UI will depend on who will use it and what important for them to see first. Also, I will add a search box and different filters.
  2. For this app I followed structure of CSV file. Table inventories has combinations of style, size, and count. But make more sense to split it into different tables: styles(style columns) and inventories (size and count).
  3. I could also add authentication token for accessing data.
  4. I also thought about pagination and API caching.
  5. And add more tests.  
