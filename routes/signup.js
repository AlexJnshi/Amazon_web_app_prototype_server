const express = require("express")
const router = express.Router()
const pool = require("../pool")


router.post("/",(req,res)=>{
    console.log(req.body)

    pool.query("INSERT INTO user(uname,upassword,email) VALUES (?,?,?)",
    [req.body.uname,req.body.upassword,req.body.email],result=>{
        res.send(result)
    })
})




module.exports = router;