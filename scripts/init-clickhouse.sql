CREATE DATABASE IF NOT EXISTS analytics;

CREATE TABLE IF NOT EXISTS analytics.user_activity (
    user_id Int32,
    event_date Date,
    event_type String,
    value Float64
) ENGINE = MergeTree()
PARTITION BY toYYYYMM(event_date)
ORDER BY (user_id, event_date);

CREATE TABLE IF NOT EXISTS analytics.results (
    processing_date Date,
    total_users Int32,
    total_events Int32,
    avg_value Float64
) ENGINE = MergeTree()
ORDER BY (processing_date);