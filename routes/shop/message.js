var express = require('express');

const  mysqlConn=require('../../libs/mysql_conn.js');

var router = express.Router();
module.exports=function(){
   var db=mysqlConn();
  
    router.get('/',(req,res)=>{
    	var receiver=req.session['shopname'];
    	db.query(`SELECT * FROM news_table WHERE receiver ='${receiver}' OR receiver ='all'`,(err,data)=>{
    		if(err){
    			console.error(err);
    		}
    		else{
    			res.render('shop/message.ejs',{shopname:req.session['shopname'],messageData:data})
    		}
    	})
      
    })


   return router;
}

