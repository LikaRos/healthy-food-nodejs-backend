const app = require("./api/index");
const { PORT } = process.env;

app.listen(PORT, () => {
  console.log("Server running");
});
