//使用express构建web服务器 --11:25
const express = require('express');
const session = require("express-session");
const bodyParser = require('body-parser');
const cors = require("cors");
/*引入路由模块*/
// var index = require("./routes/index");
// var details = require("./routes/details");
// var products = require("./routes/products");
// var users = require("./routes/users");
// var cartItems = require("./routes/cartItems");
var jsonobj = require("./routes/getdata");
var booklist = require("./routes/booklist");
var readbookapi = require("./routes/readbookapi");
var upload = require("./routes/upload");
// var fsitem = require("./routes/fsread");

var app = express();
app.use(session({
    secret: "128密钥字符串",
    resave: true, //每次请求更新数据
    saveUninitialized: true
        // cookie: { maxAge: 20 * 60 * 1000 }
}));
//192.168.0.104
app.use(cors({
    origin: ['http://localhost:8080', 'http://192.168.0.104:8080', 'http://192.168.0.101:8080'],
    credentials: true
}))

var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({ extended: false }));
//托管静态资源到public目录下
app.use(express.static('public'));
app.use(session({
    secret: '随机字符串',
    cookie: { maxAge: 60 * 1000 * 30 }, //过期时间ms
    resave: false,
    saveUninitialized: true
}));
//将服务器的session，放在req.session中
/*使用路由器来管理路由*/
// app.use("/index", index);
// app.use("/details", details);
// app.use("/products", products);
// app.use("/users", users);
// app.use("/cartItems", cartItems);
//app.use("/jsonobj",jsonobj);
// app.use("/fsitem", fsitem);
app.use("/booklist", booklist);
app.use("/readbookapi", readbookapi);
app.use("/upload", upload);
app.use("/jsonobj", jsonobj);