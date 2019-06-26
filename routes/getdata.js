const express = require("express");
const fs = require("fs");
const pool = require("../pool");
var router = express.Router();
const request = require("request");
let arr = [];
let type = "";
let index = "";
let arr02 = [];
router.get("/getjson", (req, res) => {
    fs.readFile("./books.json", "utf8", (err, data) => {
        if (err) { throw err; }
        arr = JSON.parse(data);
        var num = 0;
        for (const item of arr) {
            num += 1;
            if (num > 1) {
                if (item.rankingMetas.length > 0) {
                    for (const o of item.rankingMetas) {
                        type = o.type;
                        index = o.channel;
                        let url = `https://read.douban.com/j/index//charts?type=${type}&index=${index}`;
                        //console.log(url);
                        request(url, function (error, response, body) {
                            if (!error && response.statusCode == 200) {
                                arr02 = JSON.parse(body);
                                for (const i of arr02.list) {
                                    if (i.works) {
                                        let work = i.works;
                                        let book_author_ids = "";
                                        let book_author_names = "";
                                        let kind_ids = "";
                                        let kind_names = "";
                                        if (i.works.author.length > 0) {
                                            i.works.author.forEach(w => {
                                                book_author_ids += w.url + ",";
                                                book_author_names += w.name + ",";
                                            });
                                        }
                                        if (i.works.kinds.length > 0) {
                                            i.works.kinds.forEach(w => {
                                                kind_ids += w.id + ",";
                                                kind_names += w.shortName + ",";
                                            });
                                        }
                                        var sql = "INSERT INTO `tb_books`(`book_id`, `book_title`, `url`, `img_url`, `kind_ids`, `kind_names`, `book_author_ids`, `book_author_names`, `add_date`)";
                                        sql += `VALUES ('${work.id}','${work.title}','${work.url}','${work.cover}','${kind_ids}','${kind_names}','${book_author_ids}','${book_author_names}',NOW())`;
                                        console.log(sql);
                                        pool.query(sql, [], (err, result) => {
                                            if (err) { throw err; }
                                            //res.send(result);
                                            console.log(result.affectedRows);
                                        })

                                    }
                                }
                            }
                        })
                    }
                }

            }

        }
        //res.send(data);
    })
    res.send("ok");

})

router.get("/getbookinfo", (req, res) => {
    var sql = "SELECT  * FROM `tb_books`";
    pool.query(sql, (err, result) => {
        if (err) { throw err; }
        if (result.length > 0) {
            for (let index = 0; index < result.length; index++) {
                let book_id = result[index]["book_id"];
                let url = `https://read.douban.com/j/ebook/${book_id}/`;
                //console.log(book_id);
                if (index >= 0) {
                    // o.abstract, o.read_count, o.rating_cnt, o.publish_time, o.round_word_count, o.publisher, o.book_id
                    request(url, function (error, response, body) {
                        console.log(index);
                        if (!error && response.statusCode == 200) {
                            let o = JSON.parse(body);
                            sql = "UPDATE `tb_books` SET`";
                            sql += "abstract`='" + o.abstract + "'";
                            if(o.read_count){
                                sql += ",`read_count`=" + o.read_count;
                            }
                            if(o.rating_cnt){
                                sql += ",`rating_cnt`=" + o.rating_cnt;
                            }
                            sql += ",`publish_time`='" + o.publish_time + "'";
                            sql += ",`round_word_count`='" + o.round_word_count + "'";
                            if (o.publisher) {
                                sql += ",`publisher`='" + o.publisher + "'";
                            }
                            sql += " WHERE book_id=" + book_id + "";
                            //console.log(sql);
                            pool.query(sql,[], (err, r) => {
                                if (err) { throw err }
                                console.log(r.affectedRows);
                            })
                        }
                    })
                }


            }
        }

    })
    res.send("ok");
})

router.get("/getimginfo", (req, res) => {
    var sql = "SELECT  * FROM `tb_books`";
    pool.query(sql, (err, result) => {
        if (err) { throw err; }
        if (result.length > 0) {
            for (let index = 0; index < result.length; index++) {
                let img_url = result[index]["img_url"];
                let url = img_url;
                //console.log(book_id);
                if (index >= 0) {
                    // o.abstract, o.read_count, o.rating_cnt, o.publish_time, o.round_word_count, o.publisher, o.book_id
                    request(url, function (error, response, body) {
                        console.log(index);
                        if (!error && response.statusCode == 200) {
                            let o = JSON.parse(body);
                            sql = "UPDATE `tb_books` SET`";
                            sql += "abstract`='" + o.abstract + "'";
                            if(o.read_count){
                                sql += ",`read_count`=" + o.read_count;
                            }
                            if(o.rating_cnt){
                                sql += ",`rating_cnt`=" + o.rating_cnt;
                            }
                            sql += ",`publish_time`='" + o.publish_time + "'";
                            sql += ",`round_word_count`='" + o.round_word_count + "'";
                            if (o.publisher) {
                                sql += ",`publisher`='" + o.publisher + "'";
                            }
                            sql += " WHERE book_id=" + book_id + "";
                            //console.log(sql);
                            pool.query(sql,[], (err, r) => {
                                if (err) { throw err }
                                console.log(r.affectedRows);
                            })
                        }
                    })
                }


            }
        }

    })
    res.send("ok");
})


module.exports = router;