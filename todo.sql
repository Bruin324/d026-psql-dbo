create table todos (
  id SERIAL PRIMARY KEY,
  title varchar(255) NOT NULL,
  details text,
  priority int NOT NULL DEFAULT 1,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  completed_at timestamp);

insert into todos
  (
    title, details, priority, created_at, completed_at
  )
  values
  ('wash car', 'either Cactus or Shell station', 2, now(), NULL),
  ('laundry', '3 loads', 1, now(), NULL),
  ('dentist appt', 'Dr Turner', 3, '2017-06-10', '2017-06-19 15:30-05'),
  ('wash dogs', 'need shampoo', 3, '2017-06-26 11:30:59-05', NULL),
  ('mow lawn', '3 hours', 1, '2017-06-27', NULL);

select * from todos where completed_at IS NULL;

select * from todos where priority > 1;

update todos set completed_at = CURRENT_TIMESTAMP where id = 2;

delete from todos where completed_at IS NOT NULL;

select * from todos;
