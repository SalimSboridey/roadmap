-- ============================================================
-- Roadmap App — Netlify DB (Neon/PostgreSQL) Schema
-- Run this once in Netlify Dashboard → Database → SQL Console
-- OR let the app auto-create tables on first load (it will)
-- ============================================================

CREATE TABLE IF NOT EXISTS goals (
  id       INTEGER PRIMARY KEY,
  deadline TEXT    NOT NULL,
  budget   INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS tasks (
  goal_id  INTEGER NOT NULL,
  task_idx INTEGER NOT NULL,
  text     TEXT    NOT NULL,
  done     BOOLEAN NOT NULL DEFAULT false,
  PRIMARY KEY (goal_id, task_idx)
);

-- ── Preview data (optional, app seeds this automatically) ───
-- SELECT * FROM goals;
-- SELECT * FROM tasks ORDER BY goal_id, task_idx;
