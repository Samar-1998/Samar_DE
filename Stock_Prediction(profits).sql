CREATE TABLE stock_operations (
  stock_name VARCHAR(255),
  operation VARCHAR(10),
  operation_day INT,
  price DECIMAL(10,2)
);

INSERT INTO stock_operations (stock_name, operation, operation_day, price)
VALUES
  ('Leetcode', 'Buy', 1, 1000),
  ('Corona Masks', 'Buy', 2, 10),
  ('Leetcode', 'Sell', 5, 9000),
  ('Handbags', 'Buy', 17, 30000),
  ('Corona Masks', 'Sell', 3, 1010),
  ('Corona Masks', 'Buy', 4, 1000),
  ('Corona Masks', 'Sell', 5, 500),
  ('Corona Masks', 'Buy', 6, 1000),
  ('Handbags', 'Sell', 29, 7000),
  ('Corona Masks', 'Sell', 10, 10000);

  select * from stock_operations;



SELECT stock_name,
  SUM(CASE operation
      WHEN 'Buy' THEN -price
      WHEN 'Sell' THEN price
      ELSE 0
	  END) AS profits
FROM stock_operations
WHERE operation IN ('Buy', 'Sell')
GROUP BY stock_name;