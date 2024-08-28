// server/db/db.js
import { Pool } from 'pg';

const pool = new Pool({
  user: 'karabina',
  host: 'db',
  database: 'karabina',
  password: 'karabina',
  port: 5432,
});

export default pool;