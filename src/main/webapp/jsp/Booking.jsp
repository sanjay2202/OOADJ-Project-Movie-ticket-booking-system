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
                <form:form method="post">
                        <div class="seat-map" method="post">
                            <h2>Select your seats</h2>
                            <div class="screen">Screen</div><br><br><br>
                            <div class="seats">
                                <div class="row">
                                    <button type="submit" class="seat available"> <p onclick="handleClick(showID,1)">1</p></button>
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=2&&showId=${showID}">2</a></button>
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=3&&showId=${showID}">3</a></button>
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=4&&showId=${showID}">4</a></button>
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=5&&showId=${showID}">5</a></button>
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=6&&showId=${showID}">6</a></button>                                 
                                </div>
                                <div class="row">
                            
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=7&&showId=${showID}">7</a></button>
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=8&&showId=${showID}">8</a></button>
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=9&&showId=${showID}">9</a></button>                                   
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=10&&showId=${showID}">10</a></button>                                  
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=11&&showId=${showID}">11</a></button>     
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=12&&showId=${showID}">12</a></button>                                 
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=13&&showId=${showID}">13</a></button>   
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=14&&showId=${showID}">14</a></button>  
                                </div>
                                <div class="row">
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=15&&showId=${showID}">15</a></button>                                    
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=16&&showId=${showID}">16</a></button>                                    
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=17&&showId=${showID}">17</a></button>                                    
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=18&&showId=${showID}">18</a></button>  
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=19&&showId=${showID}">19</a></button>                                   
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=20&&showId=${showID}">20</a></button>    
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=21&&showId=${showID}">21</a></button>                                   
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=22&&showId=${showID}">22</a></button>                                      
                                </div>
                                <div class="row">
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=23&&showId=${showID}">23</a></button>                                    
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=24&&showId=${showID}">24</a></button>  
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=25&&showId=${showID}">25</a></button>                                   
                                    <button type="submit" class="seat available"> <a href="./selectSeat?colName=26&&showId=${showID}">26</a></button>                                    
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
                             
                </form:form>
                        
                </div>
                <!-- <button><a href="./logoutUser">LOGOUT</a></button> -->
            </body>
            <script>
                // const handleClick = ()=>{
                //     document.getElementById("movie_id");
                //     console.log("hello");
                // }
                const handleClick=async(showId,colName)=>{
                    const res = await fetch("/selectSeat?colName=${colName}&&showId=${showId}",method="post")

                }
            </script>
            
            </html>