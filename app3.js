// Usando objeto express
const express = require('express')
// App de Express
const app = express()
// Export functions from queries.js
const db = require('./queries')

app.use(express.json()) // Indicamos que usaremos JSON
// Puerto en que vamos a ver nuestra app: localhost:3000
const port = 3000

// HTTP METHODS
/*
app.get('/', (req,res) => {
    console.log(`Api Explorers GET ALL requests ${new Date()}`);
    const explorer1 = {organizacion: "Team Seas", logo: " https://assets01.teamassets.net/assets/images/teamseas-tm-logo.png" , programa: "#TeamSeas", descripcion: "Limpieza del Océano. 1 Dólar donado = 1 libra de basura que se limpia"}
    const explorer2 = {organizacion: "Earth League International",logo: "https://earthleagueinternational.org/wp-content/uploads/2020/04/earth-league-international.png",programa: "Operacion Fake gold", descripcion: "Detener la cadena de suministro ilegal de Totoaba de México a China"}
    const explorer3 = {organizacion: "The Ocean Clean Up", logo: "https://es.wikipedia.org/wiki/Fundaci%C3%B3n_The_Ocean_Cleanup#/media/Archivo:The_Ocean_Cleanup_logo.svg", programa: "The Ocean Clean Up", descripcion: "Limpieza del oceano"}
    const explorer4 = {organizacion: "Oceana", logo: "https://mx.oceana.org/wp-content/uploads/sites/17/logo_es-e1631518823246.png", programa: "Proyecto alacranes", descripcion: "Protegiendo los hábitats de México"}
    const explorer5 = {organizacion: "Ocean Conservancy", logo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGnAwqdTi7xZ8TmrekN-0JPxrXqmhgm1RIXQQ874fiI8BtE3Jf", programa: "Sustainable Fisheries", descripcion: "Soluciones científicas para un océano sano"}
    const explorers = [explorer1, explorer2, explorer3, explorer4, explorer5]
    res.status(200).json(explorers)
})
*/

app.get('/users', db.getUsers)
app.get('/users/:id', db.getUserById)

// Con esto inicializamos esta app
app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})