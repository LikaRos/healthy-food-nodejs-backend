require("dotenv").config();


const express = require("express");
const logger = require("morgan");
const cors = require("cors");
const mysql = require("mysql");
const { DB_HOST,  DB_USER, DB_PASSWORD, DB } = process.env;
const app = express();
// const swaggerUi = require("swagger-ui-express");
// const swaggerDocument = require("./swagger.json");



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
  console.log( res.json);
  res.json("Hello");
});

app.get("/products", (req, res) => {
  const query = "Select * FROM goods";
  db.query(query, (err, data) => {
    if (err) {
      console.log(err);
      return res.json(err);
    }
    console.log(data[1].image);
    return res.json(data);
  });

  db.end((err) => {
    if (err) {
      console.log(err);
      return err;
    } else {
      console.log("db is closed");
    }
  });
});

app.post("/products", (req, res) => {
  const query = "Insert into goods(`title`, `description`, `old_price`, `new_price`, `additional_info`, `image`, `count`) values (?)";
  const values = [req.body.title, req.body.description, req.body.old_price, req.body.new_price, req.body.additional_info, req.body.image, req.body.count];
  db.query(query, [values], (err, data) => {
    if (err) return res.send(err);
    console.log(data);
    return res.json(data);
  });
});


app.set("json space", 8);

// app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerDocument));
app.use((req, res) => {
  res.status(404).json({ message: "Not found" });
});

app.use((err, req, res, next) => {
  const { status = 500, message = "Server error" } = err;
  res.status(status).json({ message });
});

module.exports = app;
