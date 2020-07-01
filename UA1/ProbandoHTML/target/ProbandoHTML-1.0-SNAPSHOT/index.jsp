<%-- 
    Document   : index
    Created on : 28 may 2020, 19:21:22
    Author     : izelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <body style="background-color:powderblue;">
        <h1 style="text-align:center;">WOW HTML ES GENIAL :3</h1>
        <p style="font-family:verdana;" >Estoy escribiendo un parrafo en HTML create by Miguel Angel Mitzin </p>
        <b>El con las etiquetas "b" elemento HTML define texto en negrita, sin ninguna importancia adicional.</b>
        <strong>El "strong" elemento HTML define texto fuerte, con una importancia semántica "fuerte" añadida.</strong>
        <i>El "i" elemento HTML define texto en cursiva, sin ninguna importancia adicional.</i>
        <em>El "em" elemento HTML define texto enfatizado, con mayor importancia semántica.</em>
        <h2>El "small" elemento HTML define texto <small>más pequeño</small> Formatting</h2>
        <h2>El "mark" elemento HTML define texto <mark>marcado / resaltado</mark> Formatting</h2>
        <p>El "del" elemento HTML define el texto eliminado / eliminado.<del>blue</del> lol.</p>
        <p>El ins elemento HTML define el texto insertado / agregado. <ins>color</ins> is red.</p>
        <p>Este es <sub>El "sub" elemento HTML define texto suscrito.</sub> text.</p>
        <p>Este es <sup>El "sup" elemento HTML define texto superíndice.</sup> text.</p>
        <br>
        <br>
        <img src="Shaka-Virgo.jpg" alt="Mitzino "><br>
        <a href="https://www.youtube.com/watch?v=it9bXaOYqVE">Los hipervínculos se definen con la "a" etiqueta HTML</a>

        <table style="width:100%">
            <tr>
                <th>Ejemplo de </th>
                <th>Tabla</th>
            </tr>
            <tr>
                <td>S E N D </td>
                <td>GOOD VIBES</td>
            </tr>
            <tr>
                <td>Hola </td>
                <td>Que onda</td>
            </tr>
        </table><br><br>

        <ul>
            <li>Esta es</li>
            <li>una lista</li>
            <li>desordenada</li>
        </ul><br><br>
        <ol>
            <li>Esta es</li>
            <li>una lista</li>
            <li>Ordenada</li>
        </ol><br><br>

        <h1>My <span style="color:red">Important</span> Heading</h1>
        <form>
            <label for="fname">Ejemplo:</label><br>
            <input type="text" id="fname" name="fname"><br>
            <label for="lname">de un formulario:</label><br>
            <input type="text" id="lname" name="lname">
            <label for="fname"> el Label es la forma formal de definir una etiqueta para un control de un formulario HTML</label><br>
            <label for="pwd">Password:</label><br>
            <input type="password" id="pwd" name="pwd">
            <input type="submit" value="send nudes">
            <input type="radio" id="male" name="gender" value="male">
            <label for="male">Selecciona</label><br>
            <input type="radio" id="female" name="gender" value="female"><br>
            <label for="other">Ejemlo de otro</label><br>
            <label for="vehicle2"> Chekea el box</label><br>
            <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat"><br>
            <input type="button" onclick="alert('Hello World!')" value="Click Me!"><br>
            <label for="favcolor">Select your favorite color:</label><br>
            <input type="color" id="favcolor" name="favcolor"><br>
            <label for="birthday">Birthday:</label><br>
            <input type="date" id="birthday" name="birthday" required="">
            <label for="datemax">Enter a date before 1980-01-01:</label>
            <input type="date" id="datemax" name="datemax" max="1979-12-31"><br><br>
            <label for="datemin">Enter a date after 2000-01-01:</label><br>
            <input type="date" id="datemin" name="datemin" min="2000-01-02"><br>
            <label for="birthdaytime">Birthday (date and time):</label><br>
            <input type="datetime-local" id="birthdaytime" name="birthdaytime"><br>
            <label for="email">Enter your email:</label><br>
            <input type="email" id="email" name="email"><br>
            <label for="myfile">Select a file:</label><br>
            <input type="file" id="myfile" name="myfile"><br>
            <label for="bdaymonth">Birthday (month and year):</label><br>
            <input type="month" id="bdaymonth" name="bdaymonth"><br>
            <label for="quantity">Quantity (between 1 and 5):</label><br>
            <input type="number" id="quantity" name="quantity" min="1" max="5"><br>
            <label for="quantity">Quantity:</label><br>
            <input type="number" id="quantity" name="quantity" min="0" max="100" step="10" value="30"><br>
            <label for="vol">Volume (between 0 and 50):</label><br>
            <input type="range" id="vol" name="vol" min="0" max="50"><br>
            <label for="gsearch">Search Google:</label><br>
            <input type="search" id="gsearch" name="gsearch"><br>
            <label for="phone">Enter your phone number:</label><br>
            <input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}"><br>
            <label for="appt">Select a time:</label><br>
            <input type="time" id="appt" name="appt"><br>
            <label for="homepage">Add your homepage:</label><br>
            <input type="url" id="homepage" name="homepage"><br>
            <label for="week">Select a week:</label><br>
            <input type="week" id="week" name="week"><br>
        </form>
<select id="cars" name="cars">
  <option value="volvo">Este elemento</option>
  <option value="saab">define</option>
  <option value="fiat">una lista</option>
  <option value="audi">despegable</option>
</select>
<textarea name="message" rows="10" cols="30">
elemento define un campo de entrada de varias líneas ( un área de texto)
</textarea>
        <button type="button" onclick="alert('Push me')">Click Me!</button><br>       
    </body>
</html>