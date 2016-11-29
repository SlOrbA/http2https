const express = require('express')
const app = express()

const redirect = (req, res, next) => {
  const destination = `https://${req.headers.host}${req.url}`
  console.log(`Http2https redirecting to: ${ destination }`)
  res.redirect(destination)
  next()
}

app.use(redirect)
app.listen(process.env.PORT || 80)
