const express = require("express");
var router = express.Router();
//var query=require("./query");
const pool = require("../pool");
var query = require("./query");

router.get("/login", (req, res) => {
    var nickname = req.query.nickname;
    var pwd = req.query.pwd;
    var sql = "SELECT `id`, `name`, `nickname`, `head_img`, `note`, `addtime` FROM `tb_users` WHERE nickname=? and password=?";
    var obj = { code: -1, msg: "登录失败" };
    pool.query(sql, [nickname, pwd], (err, result) => {
        if (err) { throw err; }
        if (result && result.length > 0) {
            req.session.user = result[0];
            // console.log("login=> UID:" + req.session.user ? req.session.user.id : "");
            obj.code = 1;
            obj.msg = "登录成功";
        }
        res.send(obj);
    })
})

router.get("/loginout", (req, res) => {
    var obj = { code: -1, msg: "请登录" };

    if (req.session.user) {
        req.session.user = null;
        res.send(obj);
    }
})

router.get("/getBykindname", (req, res) => {
    var obj = { code: -1, data: [] };
    if (req.session.user) {
        var kindname = req.query.kindname;
        var pageindex = req.query.pageindex;
        var pagesize = req.query.pagesize;
        if (!pageindex) {
            pageindex = 1;
        }
        if (!pagesize) {
            pagesize = 6;
        }
        if (!kindname) {
            kindname = '精选';
            kindnameLen = 13;
        }
        var begin = parseInt(pagesize) * (parseInt(pageindex) - 1);
        var sql = "SELECT `id`, `book_id`, `book_title`, `url`, `img_url`, `kind_ids`, `kind_names`, `book_author_ids`, `book_author_names`, `add_date`, `abstract`, `read_count`, `rating_cnt`, `publish_time`, `round_word_count`, `publisher` FROM `tb_books` WHERE `kind_names` like concat('%',?,'%')  LIMIT ?,?";
        query(sql, [kindname, begin, parseInt(pagesize)])
            .then(result => {
                // if (err) { throw err }
                if (result.length > 0) {
                    obj.code = 1;
                    obj.data = result;
                }
            }).then(result => {
                var sql02 = "SELECT count(id) record FROM `tb_books` WHERE `kind_names` like concat('%',?,'%')";
                pool.query(sql02, [kindname], (err, result) => {
                    if (err) { throw err }
                    var record = result[0].record;
                    // console.log(result);
                    obj.pagecount = Math.ceil(parseInt(record) / pagesize);
                    res.send(obj);
                });
            })

    } else {
        obj.msg = "请登录";
        res.send(obj);
    }

})

router.get("/getKindName", (req, res) => {
    var obj = { code: -1, data: [] };

    if (req.session.user) {
        var sql = "SELECT DISTINCT LEFT(tb_books.kind_names,2) kind_name,LEFT(tb_books.kind_ids,3) kind_id FROM `tb_books` LIMIT 0,8";

        pool.query(sql, (err, result) => {
            if (err) { throw err; }
            if (result.length > 0) {
                obj.code = 1;
                obj.data = result;
            }
            res.send(obj);
        });
    } else {
        obj.msg = "请登录";
        res.send(obj);
    }

})

router.get("/getuserinfo", (req, res) => {
    var obj = { code: -1, user: null }
    if (req.session.user) {
        //console.log(useritem);
        var useritem = req.session.user;
        obj.code = 1;
        var u = {};
        u.head_img = useritem.head_img;
        u.nickname = useritem.nickname;
        obj.user = u;
    } else {
        obj.msg = "请登录";
    }
    res.send(obj);
});

router.get("/getById", (req, res) => {
    console.log(666);
    var obj = { code: -1 }
    var bid = req.query.bid;
    if (req.session.user) {
        var sql = "SELECT `id`, `book_id`, `book_title`, `url`, `img_url`, `kind_ids`, `kind_names`, `book_author_ids`, `book_author_names`, `add_date`, `abstract`, `read_count`, `rating_cnt`, `publish_time`, `round_word_count`, `publisher` FROM `tb_books` WHERE `tb_books`.`id`=?";
        pool.query(sql, bid, (err, result) => {
            if (err) { throw err }
            if (result.length > 0) {
                obj.code = 1;
                obj.data = result;
                res.send(obj);
            }
        })

    } else {
        obj.msg = "请登录"
    }

});
module.exports = router;