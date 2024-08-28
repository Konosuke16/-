import pool from "../db/db";
import { eventHandler, sendError, createError } from "h3";

export default eventHandler(async (event) => {
  try {
    const result = await pool.query(`
      SELECT e.id, e.name, e.description, e.image, es.event_type, es.age_group, es.date, es.location
      FROM event e
      JOIN event_search es ON e.name = es.name
    `);

    return result.rows;
  } catch (err) {
    // エラー発生時にエラーレスポンスを返す
    sendError(
      event,
      createError({ statusCode: 500, statusMessage: err.message })
    );
  }
});
