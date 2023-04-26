<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <link rel="stylesheet" href="../css/booking.css">
            </head>

            <body>
              
                <div class="right">
                    <ul class="navbar">
                        <li><a  href="./viewMovies">Exit</a></li>
                    </ul>
                </div>
                
                <div class="container6" >
                        <div class="seat-map">
                            <h2>Select your seats</h2>
                            <div class="screen">Screen</div><br><br><br>
                            <div class="seats">
                                <div class="row">
                                    <button class="seat available"> <p onclick="handleClick('${showID}',1)">1</p></button>
                                    <button class="seat available"> <p onclick="handleClick('${showID}',2)">2</a></button>
                                    <button class="seat available"> <p onclick="handleClick('${showID}',3)">3</a></button>
                                    <button class="seat available"> <p onclick="handleClick('${showID}',4)">4</a></button>
                                    <button class="seat available"> <p onclick="handleClick('${showID}',5)">5</a></button>
                                    <button class="seat available"> <p onclick="handleClick('${showID}',6)">6</a></button>                                 
                                </div>
                                <div class="row">
                            
                                    <button class="seat available"> <p onclick="handleClick('${showID}',7)">7</a></button>
                                    <button class="seat available"> <p onclick="handleClick('${showID}',8)">8</a></button>
                                    <button class="seat available"> <p onclick="handleClick('${showID}',9)">9</a></button>                                   
                                    <button class="seat available"> <p onclick="handleClick('${showID}',10)">10</a></button>                                  
                                    <button class="seat available"> <p onclick="handleClick('${showID}',11)">11</a></button>     
                                    <button class="seat available"> <p onclick="handleClick('${showID}',12)">12</a></button>                                 
                                    <button class="seat available"> <p onclick="handleClick('${showID}',13)">13</a></button>   
                                    <button class="seat available"> <p onclick="handleClick('${showID}',14)">14</a></button>  
                                </div>
                                <div class="row">
                                    <button class="seat available"> <p onclick="handleClick('${showID}',15)">15</a></button>                                    
                                    <button class="seat available"> <p onclick="handleClick('${showID}',16)">16</a></button>                                    
                                    <button class="seat available"> <p onclick="handleClick('${showID}',17)">17</a></button>                                    
                                    <button class="seat available"> <p onclick="handleClick('${showID}',18)">18</a></button>  
                                    <button class="seat available"> <p onclick="handleClick('${showID}',19)">19</a></button>                                   
                                    <button class="seat available"> <p onclick="handleClick('${showID}',20)">20</a></button>    
                                    <button class="seat available"> <p onclick="handleClick('${showID}',21)">21</a></button>                                   
                                    <button class="seat available"> <p onclick="handleClick('${showID}',22)">22</a></button>                                      
                                </div>
                                <div class="row">
                                    <button class="seat available"> <p onclick="handleClick('${showID}',23)">23</a></button>                                    
                                    <button class="seat available"> <p onclick="handleClick('${showID}',23)">24</a></button>  
                                    <button class="seat available"> <p onclick="handleClick('${showID}',25)">25</a></button>                                   
                                    <button class="seat available"> <p onclick="handleClick('${showID}',26)">26</a></button>                                    
                                </div>
                                <br><br><br><br>
                                </div>
                                <div class="legend">
                                <div class="seat available"></div><span>&nbsp;&nbsp;&nbsp;Available&nbsp;&nbsp;&nbsp;</span>
                                <div class="seat selected"></div><span>&nbsp;&nbsp;&nbsp;Selected&nbsp;&nbsp;&nbsp;</span>
                                <div class="seat unavailable"></div><span>&nbsp;&nbsp;&nbsp;Unavailable&nbsp;&nbsp;&nbsp;</span>
                                </div><br><br><br><br>
                                <button class="submit-btn" disabled>Book selected seats</button>
                             </div>
                             
                        
                </div>
                <!-- <button><a href="./logoutUser">LOGOUT</a></button> -->
            </body>
            <script>
                // const handleClick = ()=>{
                //     document.getElementById("movie_id");
                //     console.log("hello");
                // }
                const handleClick=async(showId,colName)=>{
                    const res = await fetch("/selectSeat?colName="+ colName +"&&showId="+showId, {method :"post", "Content-Type": "application/json"})
                    console.log(res)
                }
                // const handleClick1=async(colName)=>{
                //     const res = await fetch("/selectSeat?colName=${colName}",method="post")
                //     console.log(res.json())
                // }
            </script>
            
            </html>