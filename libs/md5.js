// md5加密
const crypto=require('crypto');
module.exports=function(str){

   var obj=crypto.createHash('md5'); 
   obj.update(str);
   return obj.digest('hex');
}

