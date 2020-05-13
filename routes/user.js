const express = require("express")
const router = express.Router()
const pool = require("../pool")

router.get("/",(req,res)=>{
    pool.query(`select * from user`,[],(err,result)=>{
        if(err){
            console.log(err);
            res.send({code:0});
          }else{
            res.send(result);
          }
    })
})

router.get("/uname",(req,res)=>{
  pool.query(`select * from user where uname=?`,[req.query.uname],(err,result)=>{
      if(err){
          console.log(err);
          res.send({code:0});
        }else{
          res.send(result.length>0?true:false)
        }
  })
})

module.exports = router;