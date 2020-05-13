const express = require("express")
const router = express.Router()
const pool = require("../pool")

router.get("/add",(req,res)=>{
  let pid = req.query.pid
  let uid = req.query.user_id
  let count = 1
  pool.query(`select * from cart where user_id=? and product_id=?`,
  [uid,pid],(err,result)=>{
    if(err){
      console.log(err);
      res.send({code:0});
    }else if(result.length>0){
      count = result[0].count+1
      pool.query(`update cart set count=? where user_id=? and product_id=?`,
      [count,uid,pid],(err,result)=>{
        if(err){
          console.log(err)
          res.send({code:1})
        }else{
          res.send({msg:"Add successful"})
        }
      })
    }else{
      pool.query(`insert into cart(user_id,product_id,count) values (?,?,?)`,
      [uid,pid,count],(err,result)=>{
          if(err){
              console.log(err)
              res.send({code:2})
          }else{
              res.send({msg:"Add successful"})
          }
      })
    } 
  })
})

router.get("/",(req,res)=>{
  pool.query(`select * from cart,product,product_img where cart.user_id=? 
  and cart.product_id=product.pid and product_img.pidd=product.pid`,
  [req.query.uid],(err,result)=>{
    if(err){
      console.log(err)
      res.send({code:0})
    }else{
      res.send(result)
    }
  })
})

router.get("/update",(req,res)=>{
  if(req.query.count>0){
    pool.query(`update cart set count=? where user_id=? and product_id=?`,
    [req.query.count,req.query.uid,req.query.pid],(err,result)=>{
      if(err){
        console.log(err)
        res.send({code:0})
      }else{
        console.log(result)
      }
    })
  }else if(req.query.count==0){
    pool.query(`delete from cart where user_id=? and product_id=?`,
    [req.query.uid,req.query.pid],(err,result)=>{
      if(err){
        console.log(err)
        res.send({code:0})
      }else{
        console.log(result)
      }
    })
  }
})

router.get("/clearCart",(req,res)=>{
  pool.query(`delete from cart where user_id=?`,[req.query.uid],(err,result)=>{
    if(err){
        console.log(err)
        res.send({code:0})
    }else{
        console.log(result)
    }
  })
})

module.exports = router;