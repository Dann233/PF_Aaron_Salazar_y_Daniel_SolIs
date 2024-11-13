<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width= , initial-scale=1.0">
    <title>Menu Principal</title>
    <link rel="stylesheet" href="Vista/menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <header class="header">

        <div class="menu container ">

            <a href="#" class="logo">Logo</a>

            <input type="checkbox" id="menu"/>
            <label for="menu">
               
            </label>

            <nav class="navbar">
                <ul>
                    <li> <a href="#">Registrar Cita</a></li>
                    <li> <a href="#">Buscar Cita</a></li>
                    <li> <a href="#">Mis Citas</a></li>
                </ul>

            </nav>

            
        </div>
        <div class="header- content container">
            <div class="header-txt">
                <h1>The Gentleman’s Club</h1>
                <p>Donde el Estilo se Encuentra con la Tradición</p>
                    <a href="#" class="btn-1">Agenda con Nosotros </a>
                </div>
        </div>

    </header>


    <section class="abot">
        <div class="about-content container">

            <div class="about-txt">
                <span>The Gentleman’s Club</span>
                <h2>Tu refugio de estilo y distinción. Siéntete como en casa, caballero.

                </h2>
                <hr>
               
            </div>
            <div class=" about-img">
                <img src="Vista/imagen/tiempo.jpg" alt="">
            </div>

        </div>


    </section>
    <section class="testimonial">
        <span>Barber</span>
        <div class="testimonial-content- container">
            <div class="testimonial-1">
                <img   class="face" src="Vista/imagen/Barbershop.jpg" alt="">
                <h4>Bienvenido, caballero. Hoy vamos a darte el estilo que mereces.</h4>
                   
            </div>
           


        </div>

    </section>

    <main class="plans">

        <span>The Gentleman’s Club</span>
        <h2>Nuestros paquetes</h2>
        <hr>
        <div class="plans-content container">
            <div class="plan-1">
                <span> ₡5,000</span>
                <h3>The Quick Cut</h3>
                <p></p>
                <p>Corte de cabello</p>
                <p>Peinado sencillo</p>
                
            </div>
            <div class="plan-1">
                <span>₡10,000</span>
                <h3>The Sharp Look</h3>
                <p></p>
                <p>Corte de cabello</p>
                <p>Afeitado o arreglo de barba</p>
                <P>Peinado con productos premium</P>
                

                
            </div>
            <div class="plan-1">
                <span>₡15,000</span>
                <h3>Distinguished</h3>
                <p></p>
                <p>Corte de cabello</p>
                <p>Afeitado o perfilado de barba con toalla caliente</p>
                <P>Peinado y finalización con productos de alta calidad</P>
                <P>Masaje de cuello y hombros</P>
                <p>Trago de cortesía</p>

                
            </div>
        </div>

    </main>
    

    <section class="blog">
        <span>The Gentleman’s Club</span>
        <div class="blog-content container">

            <div class="blog-1">
                <img src="Vista/imagen/Elvis.jpg" alt="">
                <div class="blog-txt">
                    <span>La barbería que nunca duerme.</span>
                    <h3>Porque el estilo no tiene horario.</h3>
                  
                </div>
            </div>
            <div class="blog-1">
                <img src="Vista/imagen/Flow.jpg" alt="">
                <div class="blog-txt">
                    <span>Old school con un toque de ciudad.</span>
                    <h3>Inspirado en los grandes de ayer, pensado para el caballero de hoy.</h3>
                    
                </div>
            </div>
            <div class="blog-1">
                <img src="Vista/imagen/David.jpg" alt="">
                <div class="blog-txt">
                    <span>Porque un caballero siempre lleva el estilo de su ciudad.</span>
                    <h3>Refinamiento con actitud de metrópoli.</h3>
                    
                </div>
            </div>
        </div>

    </section>

   
    <footer class="footer">
        <div class="footer-content container">


       
        <div class="link">
            <ul>
                <li><a href="#">Encuentranos en Facebook</a></li>
            </ul>
        </div>
        <div class="link">
           
            <ul>
                <li><a href="#">Encuentranos en Instagram</a></li>
            </ul>
        </div>
        <div class="link">
           
            <ul>
                <li><a href="#">Escribenos a nuestro WhatsApp</a></li>
            </ul>
        </div>
    </div>


    </footer>
    <div id="modal" class="modal">
        <div class="modal-content">
            <h2>Registrar Cita</h2>
            <form id="form-clientes" action ="Modelo/insertar_cliente.jsp" method="POST">
                <label for="cedula">Cédula:</label>
                <input type="text" id="cedula" name="cedula" required>
                
                <label for="nombre1">Primer Nombre:</label>
                <input type="text" id="nombre1" name="nombre1" required>
                
                <label for="nombre2">Segundo Nombre:</label>
                <input type="text" id="nombre2" name="nombre2">
                
                <label for="apellido1">Primer Apellido:</label>
                <input type="text" id="apellido1" name="apellido1" required>
                
                <label for="apellido2">Segundo Apellido:</label>
                <input type="text" id="apellido2" name="apellido2">
                
                <div class="modal-buttons" >
                <button type="button" onclick="closeModal()">Cancelar</button>
                <button type="button" onclick="submitForm('Modelo/insertar_cliente.jsp')"><i class="fas fa-plus"></i>Agregar</button>
                <button type="button" onclick="submitForm('Modelo/actualizar_cliente.jsp')">Actualizar</button>
                <button type="button" onclick="submitForm('Modelo/eliminar_cliente.jsp')">Eliminar</button>
                </div>
            </form>
        </div>
    </div>
 
    <div id="modalDate" class="modal">
        <div class="modal-content">
            <h2>Seleccione Fecha y Hora de la Cita</h2>
            <form>
                <label for="fecha">Fecha:</label>
                <input type="date" id="fecha" name="fecha" required>
                
                <label for="hora">Hora:</label>
                <input type="time" id="hora" name="hora" required>
                
                <div class="modal-buttons">
                    <button type="button" onclick="closeModalDate()">Cancelar</button>
                    <button type="submit">Aceptar</button>
                </div>
            </form>
        </div>
    </div>


   
<div id="modalBuscarCita" class="modal">
    <div class="modal-content">
        <h2>Buscar Cita</h2>
        <form>
            <label for="idCita">ID Cita:</label>
            <input type="number" id="idCita" name="idCita" min="1" required>
            
            <div class="modal-buttons">
                <button type="button" onclick="closeBuscarModal()">Cancelar</button>
                <button type="button" onclick="buscarCita()">Aceptar</button>
            </div>
        </form>
    </div>
</div>


<div id="modalDetalleCita" class="modal">
    <div class="modal-content">
        <h2>Detalles de la Cita</h2>
        <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
            <thead>
                <tr>
                    <th>ID Cita</th>
                    <th>Cédula</th>
                    <th>Fecha</th>
                    <th>Hora</th>
                </tr>
            </thead>
            <tbody id="detalleCitaBody">
              
            </tbody>
        </table>
        <div class="modal-buttons">
            <button type="button" onclick="closeDetalleModal()">Cancelar</button>
            <button type="button" onclick="closeDetalleModal()">Aceptar</button>
        </div>
    </div>
</div>

<div id="modalMisCitas" class="modal">
    <div class="modal-content">
        <h2>Mis Citas</h2>
        <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
            <thead>
                <tr>
                    <th>ID Cita</th>
                    <th>Cédula Cliente</th>
                    <th>Hora</th>
                    <th>Fecha</th>
                </tr>
            </thead>
            <tbody id="misCitasBody">
               
                <tr>
                    <td>1</td>
                    <td>123456789</td>
                    <td>10:00pm</td>
                    <td>2024-11-12</td>
                    
                </tr>
                
            </tbody>
        </table>
        <div class="modal-buttons">
            <button type="button" onclick="closeMisCitasModal()">Cancelar</button>
        </div>
    </div>
</div>


    <script src="Controlador/menu.js"></script>

</body>
</html>