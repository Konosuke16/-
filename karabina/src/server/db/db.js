// server/db/db.js
import { Pool } from "pg";

const pool = new Pool({
  user: process.env.DB_USER || "karabina",
  host: process.env.DB_HOST || "db",
  database: process.env.DB_NAME || "karabina",
  password: process.env.DB_PASS || "karabina",
  port: process.env.DB_PORT || 5432,
});

pool.connect();
export default pool;
