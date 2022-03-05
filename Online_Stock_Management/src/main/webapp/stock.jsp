<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
   <meta charset="ISO-8859-1">
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>STOCK | Online Stock Management System</title>
</head>


<body style=" margin: 0;padding: 0;box-sizing: border-box;font-family: 'Poppins',sans-serif;height: 100vh; display: flex; justify-content: center;align-items: center;padding: 10px;background: linear-gradient(135deg, #71b7e6, #9b59b6);">

<div class="container" style="max-width: 700px;width: 100%;background-color: #fff;padding: 25px 30px;border-radius: 5px;box-shadow: 0 5px 10px rgba(0,0,0,0.15);">
   <div class="title" style="font-size: 25px;font-weight: 500;position: relative;">Stock Management</div>
     
<!-- form to add/insert stock data -->     
     
   <form action="addstockservlet" method="post" >
   <div class="stock-details" style="display: flex;flex-wrap: wrap;justify-content: space-between;margin: 20px 0 12px 0;">
   
   
<!-- insert stock number data -->
      <div class="input-box" style="margin-bottom: 15px;width: calc(100% / 2 - 20px);">
          <span class="details" style="display: block;font-weight: 500;margin-bottom: 5px;" >Stock Number</span>
		  <input type="text" name="stockno" style="height: 45px;width: 100%;outline: none;font-size: 16px;border-radius: 5px;padding-left: 15px;border: 1px solid #ccc;border-bottom-width: 2px;transition: all 0.3s ease;" placeholder="Enter Your Stock No" required>
	  </div>
	  
<!-- insert item name data -->	  
	  <div class="input-box" style="margin-bottom: 15px;width: calc(100% / 2 - 20px);">
          <span class="details" style="display: block;font-weight: 500;margin-bottom: 5px;">Item Name</span>
		  <input type="text" name="itemname" style="height: 45px;width: 100%;outline: none;font-size: 16px;border-radius: 5px;padding-left: 15px;border: 1px solid #ccc;border-bottom-width: 2px;transition: all 0.3s ease;" placeholder="Enter Your Item Name" required>
	  </div>
	  
<!-- insert item description data -->	  
	  <div class="input-box" style="margin-bottom: 15px;width: calc(100% / 2 - 20px);">
          <span class="details" style="display: block;font-weight: 500;margin-bottom: 5px;">Item Description</span>
		  <input type="text" name="itemdescr" style="height: 45px;width: 100%;outline: none;font-size: 16px;border-radius: 5px;padding-left: 15px;border: 1px solid #ccc;border-bottom-width: 2px;transition: all 0.3s ease;" placeholder="Enter Short Description" required>
	  </div>
	  
<!-- insert unit data -->
	  <div class="input-box" style="margin-bottom: 15px;width: calc(100% / 2 - 20px);">
          <span class="details" style="display: block;font-weight: 500;margin-bottom: 5px;">Unit</span>
		  <input type="text" name="unit" style="height: 45px;width: 100%;outline: none;font-size: 16px;border-radius: 5px;padding-left: 15px;border: 1px solid #ccc;border-bottom-width: 2px;transition: all 0.3s ease;" placeholder="Enter Set or Other" required>
	  </div>
	  
<!-- insert rate data -->
	  <div class="input-box" style="margin-bottom: 15px;width: calc(100% / 2 - 20px);">
          <span class="details" style="display: block;font-weight: 500;margin-bottom: 5px;">Rate</span>
		  <input type="text" name="rate" style="height: 45px;width: 100%;outline: none;font-size: 16px;border-radius: 5px;padding-left: 15px;border: 1px solid #ccc;border-bottom-width: 2px;transition: all 0.3s ease;" placeholder="Enter Item Price Rate" required>
	  </div>
	  
<!-- insert quantity data -->
	  <div class="input-box" style="margin-bottom: 15px;width: calc(100% / 2 - 20px);">
          <span class="details" style="display: block;font-weight: 500;margin-bottom: 5px;">Quantity</span>
		  <input type="text" name="quantity" style="height: 45px;width: 100%;outline: none;font-size: 16px;border-radius: 5px;padding-left: 15px;border: 1px solid #ccc;border-bottom-width: 2px;transition: all 0.3s ease;" placeholder="Enter Item Quantity" required>
	  </div>
	  
<!-- insert amount data -->
	  <div class="input-box" style="margin-bottom: 15px;width: calc(100% / 2 - 20px);">
          <span class="details" style="display: block;font-weight: 500;margin-bottom: 5px;">Amount</span>
		  <input type="text" name="amount" style="height: 45px;width: 100%;outline: none;font-size: 16px;border-radius: 5px;padding-left: 15px;border: 1px solid #ccc;border-bottom-width: 2px;transition: all 0.3s ease;" placeholder="Enter Item Amount" required>
	  </div>
	  
	  </br>
	  
	  
	  <!-- button for submit all insert data-->
	  
	  <div class="button" style="height: 45px;margin: 35px 0">
	      <input type="submit" style="height: 100%;width: 100%;border-radius: 5px;border: none;color: #fff;font-size: 18px;font-weight: 500;letter-spacing: 1px;cursor: pointer;transition: all 0.3s ease;background: linear-gradient(135deg, #71b7e6, #9b59b6);" value="Submit">
	  </div>
	  
	  
	  <!-- button for go to display page -->
	  
	  <div class="button" style="height: 45px;margin: 35px 0"><a href="DisplayStock.jsp?">
	      <input type="button" style="height: 100%;width: 100%;border-radius: 5px;border: none;color: #fff;font-size: 18px;font-weight: 500;letter-spacing: 1px;cursor: pointer;transition: all 0.3s ease;background: linear-gradient(135deg, #71b7e6, #9b59b6);" value="Display">
	  </div>
	  
	  
	  <!-- button for refresh page -->
	  
	  <div class="button" style="height: 45px;margin: 35px 0"><a href="stock.jsp?">
	      <input type="button" style="height: 100%;width: 100%;border-radius: 5px;border: none;color: #fff;font-size: 18px;font-weight: 500;letter-spacing: 1px;cursor: pointer;transition: all 0.3s ease;background: linear-gradient(135deg, #71b7e6, #9b59b6);" value="Refresh">
	  </div>
	  </br>
	  </div>
	</form>
	  </div>
      </div>
</body>

</html>