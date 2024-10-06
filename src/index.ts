import express from "express";
import dotenv from "dotenv";
import router from "./routes/route";

// 加载环境变量
dotenv.config();

const app = express();
const port = process.env.PORT || 3000;

// 中间件
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// 路由
app.get("/", (req, res) => {
  res.send("Hello World");
});

// 使用路由
app.use("/api/v1", router);

// 启动服务器
app.listen(port, () => {
  console.log(`Server is listening PORT：${port}`);
});
