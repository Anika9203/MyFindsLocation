create table places (
  id text primary key default gen_random_uuid()::text,
  name text not null,
  cat text not null default 'other',
  lat double precision not null,
  lng double precision not null,
  note text not null default '',
  src text not null default '',
  done boolean not null default false,
  created_at timestamptz not null default now()
);
-- Only your server functions (service key) can touch this table.
alter table places enable row level security;
