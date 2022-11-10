# ************************** Stored Procedures **************************
# ***************************** Store Procedure For tblUser Table *****************************
use db_dbmsprojectinventorymanagement;

# ***************************************** tblUser Section *****************************************
# innerjoin
DELIMITER &&  
CREATE PROCEDURE SelectInvoiceData ()  
BEGIN  
       select tblInvoice.InvoiceID, concat(tblCustomer.FirstName, " ", tblCustomer.LastName) as Customer,
       tblProduct.ProductName, tblInvoice.Quantity, tblInvoice.SellPrice, tblInvoice.AmountPaid, tblInvoice.PaymentMethod,
       tblInvoice.InvoiceDate from ((tblInvoice
       inner join tblCustomer on tblInvoice.CustomerID=tblCustomer.CustomerID)
	   inner join tblProduct on tblInvoice.ProductID=tblProduct.ProductID);
END && 
DELIMITER ;
Call SelectInvoiceData();
