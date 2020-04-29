const express = require('express')

const PromotersController = require('./controllers/PromotersController')

// instancia para usar as rotas
const routes = express.Router()

// listar os promotores
routes.get('/promoters', PromotersController.index)

// listar promotor por id
routes.get('/promoter/:cod', PromotersController.show)

module.exports = routes