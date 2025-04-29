WITH RECURSIVE numbers AS (
  SELECT task_id, 1 AS num, subtasks_count
  FROM tasks
  UNION ALL
  SELECT task_id, num + 1, subtasks_count
  FROM numbers
  WHERE num + 1 <= subtasks_count
)
SELECT n.task_id, n.num AS subtask_id
FROM numbers n
LEFT JOIN executed e 
  ON n.task_id = e.task_id AND n.num = e.subtask_id
WHERE e.task_id IS NULL
ORDER BY n.task_id, n.num;
