const  mysql=require('mysql');
module.exports=function(){
   return mysql.createPool({
	     host:'localhost',
		 port:3306,
		 user:'root',
		 password:'jane422870',
		 database:'mall',
		 multipleStatements: true 
    })
}
