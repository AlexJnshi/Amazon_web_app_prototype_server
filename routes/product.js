const express = require("express")
const router = express.Router()
const pool = require("../pool")

router.get("/",(req,res)=>{
  let pid = req.query.pid
  pool.query(` select * from product,product_img where product.pid=${pid} 
  and product.pid=product_img.pidd;
  `,[],(err,result)=>{
      if(err){
          console.log(err);
          res.send({code:0});
        }else{
          res.send(result);
        }
  })
})

module.exports = router;