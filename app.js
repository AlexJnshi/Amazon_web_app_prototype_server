const express = require("express");
const bodyParser = require("body-parser");
const product = require("./routes/product")
const user = require("./routes/user")
const carousel = require("./routes/carousel")
const productList = require("./routes/productList")
const productReview = require("./routes/productReview")
const signUp = require("./routes/signUp")
const signIn = require('./routes/signIn')
const cart = require('./routes/cart')
const cors = require("cors")


var app = express();
app.listen(3000);

app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json())

app.use(cors({
    credentials:true,
   origin:"http://192.168.3.10:4200"
  }))


app.use("/product",product)
app.use("/user",user)
app.use("/carousel",carousel)
app.use("/product-list",productList)
app.use("/product-review",productReview)
app.use("/signin",signIn)
app.use("/signup",signUp)
app.use('/cart',cart)