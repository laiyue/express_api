var express = require("express");
var router = express.Router();
var fs = require("fs");
fs.readdir('images', (err, data) => {
    if (err) {
        console.log(err);
    } else {
        let num = 0;
        for (const item of data) {
            if (item.toString().indexOf(".") != -1) {
                if (item.toString().indexOf(" ") != -1) {
                    var imgname = "images/" + item.replace(" ","");
                    fs.rename("images/" + item, imgname, (err) => {
                        if (err) {
                            console.log(err);
                            return;
                        }
                    });
                }
            }

        }
    }
});
module.exports = router;