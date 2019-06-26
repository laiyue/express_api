const express = require("express");
var router = express.Router();
const fs = require("fs");
const multer = require("multer");
const path = require('path');
const pool = require("../pool");

//创建upload对象，指定临时目录
var upload = multer({ dest: "public/upload/" });
router.post("/uploadFiles", upload.single("mypic"), (req, res) => {
    var result = { code: -1, msg: "" };
    //var src = req.file.originalname;
    console.log(req.session.user);
    if (req.session.user) {
        // console.log("上传图片的大小:" + req.file.size);
        // console.log("path:" + req.file.path);
        if (req.file.size > 0 && req.file.size / 1000 / 1000 <= 2) {
            if (req.file.mimetype.indexOf("image") != -1) {
                var src = req.file.originalname;
                console.log(src);
                //创建新文件名
                var ft = new Date().getTime();
                var tn = Math.floor(Math.random() * 9999);
                var i3 = src.lastIndexOf(".");//查找后缀，下标
                var suff = src.substring(i3);//i3位置开截取
                var des = "./public/upload/" + ft + tn + suff;
                //将临时文件移动到upload目录下
                let rootPath = path.resolve(__dirname, '..');
                rootPath += '/' + req.file.path;
                console.log("rootPath:"+rootPath);
                console.log("des:"+des);
                fs.renameSync(rootPath, des);
                var sql = "UPDATE `tb_users` SET `head_img`=? WHERE id=?";
                var uid = req.session.user.id;
                pool.query(sql, [des.substr(1), uid], (err, result) => {
                    if (err) { throw err; }
                });
                req.session.head_img=des;
                res.send({ code: 1, msg: "上传成功", head_img: des.substr(1) });
            }
            else {
                result.msg = "不是图片类型";
                res.send(result);
            }
        }
        else {
            result.msg = "文件大于2m";
            res.send(result);
        }
    } else {
        result.msg = "请登录";
        res.send(result);
    }

});

module.exports = router;