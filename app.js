require("dotenv").config();

const express = require("express");
const logger = require("morgan");
const cors = require("cors");
// const mysql = require("mysql");
const mysql = require("mysql2");

const { DB_HOST, DB_USER, DB_PASSWORD, DB } = process.env;

const app = express();
const PER_PAGE = 8;

const db = mysql.createConnection({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB,
});

db.connect((err) => {
  if (err) {
    console.log(err);
    return err;
  } else {
    console.log("db is ok");
  }
});

const formatsLogger = app.get("env") === "development" ? "dev" : "short";

app.use(logger(formatsLogger));
app.use(cors());
app.use(express.json());
app.use(express.static("public"));

app.get("/", (req, res) => {
  console.log(res.json);
  res.json("Hello");
});

app.get("/products", (req, res) => {
  const query = `Select goods.*, categories.category FROM goods JOIN categories ON categories.id = goods.category_id ORDER BY goods.new_price LIMIT ${PER_PAGE} OFFSET ${
    PER_PAGE * (req.query.page - 1)
  }`;
  db.query(query, (err, data) => {
    if (err) {
      console.log(err);
      return res.json(err);
    }
    console.log(data);
    return res.json(data);
  });
});

app.post("/orders", (req, res) => {
  const { email, name, message, address, number, cart } = req.body;
  let orderId;

  const query =
    "Insert into orders(`name`, `email`, `number`, `address`, `message`) values (?)";
  const values = [name, email, number, address, message];
  db.query(query, [values], (err, data) => {
    if (err) return res.send(err);

    orderId = data.insertId;

    const addGoodsQuery =
      "Insert into goods_orders (`goods_id`, `order_id`, `quantity`) values ?";
    const addGoodsValues = cart.map((item) => [
      item.product.id,
      orderId,
      item.quantity,
    ]);

    db.query(addGoodsQuery, [addGoodsValues], (err, data) => {
      if (err) return res.send(err);
      return res.json(data);
    });
  });
});

app.set("json space", 8);

app.use((req, res) => {
  res.status(404).json({ message: "Not found" });
});

app.use((err, req, res, next) => {
  const { status = 500, message = "Server error" } = err;
  res.status(status).json({ message });
});

module.exports = app;
