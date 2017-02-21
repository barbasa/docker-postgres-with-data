var express = require('express')
const pg = require('pg');
var app = express()

app.get('/', function (req, res) {
  const client = new pg.Client(process.env.DATABASE_URL);
  client.connect();
  console.log('Connected to DB');
  const query = client.query('SELECT now();');
  query.on('row', (row) => {
    res.send("Hello World at time: " + row.now)
  });
  query.on('end', () => { client.end(); });
})

app.listen(8881, function () {
  console.log('Example app listening on port 8888!')
})
