express = require('express')
routes = require('./routes')

app = module.exports = express.createServer()

app.configure( ->
  app.set('views', __dirname + '/views')
  app.set('view engine', 'jade')
  app.use(express.bodyParser())
  app.use(express.methodOverride())
  app.use(app.router)
  app.use(express.static(__dirname + '/public'))
)

app.get('/', routes.index)

app.listen(3000)

