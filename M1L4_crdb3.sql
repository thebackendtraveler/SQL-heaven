CONSTRAINT fk_customer
FOREIGN KEY (customer)
REFERENCES Customers(cust_id)
ON DELETE RESTRICT
ON UPDATE RESTRICT