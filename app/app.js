const express = require("express");
const app = express();
const PORT = 3000;

app.get("/", (req, res) => res.send("Node.js App is running!"));
app.get("/health", (req, res) => res.send("OK"));

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));
