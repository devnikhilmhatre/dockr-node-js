const express = require('express')
const mongoose = require('mongoose');
mongoose.connect(`mongodb://${process.env.DATABASE_HOST}:27017/docker`, { useNewUrlParser: true });


const app = express()

const port = process.env.PORT || 3001

const db = mongoose.connection;
// db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', function () {
  console.log('connected...');
})


app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
