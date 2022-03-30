SELECT *
FROM Clients


INSERT INTO Clients(FirstName, LastName, City, PhoneNumber, EMail)
VALUES ('Maria', 'Wójcik', 'Kraków', '500000000', 'e@gmail.com')


UPDATE Clients
SET FirstName = 'Jadzia', PhoneNumber = '123456789'
WHERE Id = 5


DELETE FROM Clients
WHERE Id = 5


SELECT Number AS [Numer faktury], FirstName AS Imiê, LastName AS Nazwisko
FROM Invoices i
INNER JOIN Clients c ON c.Id = i.ClientNumber


SELECT Number AS [Numer faktury], ProductId AS Pozycja, Name [Nazwa produktu], Price AS Cena
FROM InvoicePositions inp
INNER JOIN Invoices i ON i.Id = inp.InvoiceId
INNER JOIN Products p ON p.Id = inp.ProductId


SELECT Number AS [Numer faktury], SUM(Quantity) AS [Iloœæ sztuk]
FROM InvoicePositions inp
INNER JOIN Invoices i ON i.Id = inp.InvoiceId
GROUP BY Number


SELECT Number AS [Numer faktury], SUM(Quantity * Price) AS [Cena ca³kowita]
FROM InvoicePositions inp
INNER JOIN Invoices i ON i.Id = inp.InvoiceId
INNER JOIN Products p ON p.Id = inp.ProductId
GROUP BY Number
