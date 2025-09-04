CREATE TABLE IF NOT EXISTS shop.Users(
    id SERIAL  PRIMARY KEY ,
    name VARCHAR(20) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    age INTEGER NOT NULL,
    is_active BOOLEAN NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);


--в данном примере нам нужно сначала создать таблицу shop.Users, в противном случае полк user_id будет ссылаться на несуществующую таблицу
CREATE TABLE IF NOT EXISTS shop.Orders(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES shop.users(id) ON DELETE CASCADE ,
    product_name VARCHAR(30),
    amount FLOAT,
    created_at TIMESTAMP DEFAULT NOW()
);

SELECT*FROM shop.users;
SELECT*FROM shop.orders


