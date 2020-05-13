const express = require("express")
const router = express.Router()
const pool = require("../pool")

router.get("/",(req,res)=>{
    pool.query(`select * from carousel`,[],(err,result)=>{
        if(err){
            console.log(err);
            res.send({code:0});
          }else{
            res.send(result);
          }
    })
})

module.exports = router;