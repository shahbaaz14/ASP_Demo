CREATE TABLE [dbo].[Product]
(
	[ProductID] INT NOT NULL, 
    [ProductName] VARCHAR(50) NOT NULL, 
    [Price] BIGINT NOT NULL, 
    [ProductImage] VARCHAR(50) NOT NULL,
	PRIMARY KEY CLUSTERED ([ProductID] ASC)
);
