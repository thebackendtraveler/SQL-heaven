INSERT INTO Orders (order_date, delivery_date, customer, total_price)
VALUES
('20200205','20200219',4,649);

# insert the Customer

INSERT INTO Customers (surname, initials, salutation, telnumber, address)
VALUES
("Ritland","FC","Mr", "004725678735", "Tordenskjolds gate 18, 5031, Bergen");

# Then the order

INSERT INTO Orders (order_date, delivery_date, customer, total_price)
VALUES
('20200205','20200219',4,649);

SELECT * FROM Customers;

SELECT * FROM Orders;