const express = require("express")
const router = express.Router()
const pool = require("../pool")


router.post("/",(req,res)=>{
    console.log(req.body)
    pool.query("select * from user where uname=? and upassword=?",
    [req.body.uname,req.body.upassword],
    (err,result)=>{
        if(err){
            console.log(err)
        }
        if(result.length==0){
            res.send({
                code:0,
                msg:"The username or password is incorrect"})
        }else{
            res.send({
                user:result[0],
                code:1,
                msg:"Sign in successful"
            })
        }
       

    })
})




module.exports = router;