const express=require('express');

const pool=require('../pool.js');

var router=express.Router();

//查询书籍信息
router.get('/pop',(req,res)=>{
	var sql='SELECT * FROM know_pop';
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});


module.exports=router;