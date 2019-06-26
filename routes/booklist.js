var express = require("express");
var pool = require("../pool");
var router = express.Router();
//var query=require("./query");
router.get("/booklist", (req, res) => {
    var obj = {};
    //console.log(req.session.user);
    if (req.session.user) {
        var { pageindex, pagesize } = req.query;
        //var uid=req.session.uid;
        if (!pageindex || pageindex == 0) {
            pageindex = 1;
        }
        if (!pagesize) {
            pagesize = 10;
        }
        var begin = pagesize * (pageindex - 1);
        var end = (pagesize * pageindex);
        var sql = "SELECT `id`, `book_id`, `book_title`, `url`, `img_url`, `kind_ids`, `kind_names`, `book_author_ids`, `book_author_names`, `add_date`, `abstract`, `read_count`, `rating_cnt`, `publish_time`, `round_word_count`, `publisher` FROM `tb_books` ";
        sql += `limit ${begin},${pagesize}`;
        pool.query(sql, (err, result) => {
            if (err) { throw err }
            obj.data = result;
            obj.code = 1;
            res.send(obj);
        })
    } else {
        obj.code = -1;
        obj.msg = "请登录";
        res.send(obj);
    }

})
module.exports = router;