// server/api/getEvents.js
import pool from '../db/db';

export default async function (req, res) {
  try {
    const result = await pool.query(`
      SELECT e.id, e.name, e.description, e.image, es.event_type, es.age_group, es.date, es.location
      FROM event e
      JOIN event_search es ON e.name = es.name
    `);
    res.status(200).json(result.rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
}
