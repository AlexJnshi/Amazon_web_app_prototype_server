const express = require("express")
const router = express.Router()
const pool = require("../pool")

router.get("/",(req,res)=>{
  pool.query(` select * from product_review,user where product_review.pid=? and product_review.uid=user.uid;
  `,[req.query.pid],(err,result)=>{
    if(err){
      console.log(err);
      res.send({code:0});
    }else{
      res.send(result);
    }
  })
})

router.get("/u",(req,res)=>{
  pool.query(` update product_review set rHelpfulNum=? `,
  [req.query.rHelpfulNum],(err,result)=>{
    if(err){
      console.log(err);
      res.send({code:0});
    }else{
      res.send(result);
    }
  })
})

module.exports = router;