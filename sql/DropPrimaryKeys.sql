ALTER TABLE track_puid_source DROP CONSTRAINT track_puid_source_pkey;
ALTER TABLE track_puid DROP CONSTRAINT track_puid_pkey;
ALTER TABLE track_meta_source DROP CONSTRAINT track_meta_source_pkey;
ALTER TABLE track_meta DROP CONSTRAINT track_meta_pkey;
ALTER TABLE track_mbid_source DROP CONSTRAINT track_mbid_source_pkey;
ALTER TABLE track_mbid_flag DROP CONSTRAINT track_mbid_flag_pkey;
ALTER TABLE track_mbid_change DROP CONSTRAINT track_mbid_change_pkey;
ALTER TABLE track_mbid DROP CONSTRAINT track_mbid_pkey;
ALTER TABLE track_foreignid_source DROP CONSTRAINT track_foreignid_source_pkey;
ALTER TABLE track_foreignid DROP CONSTRAINT track_foreignid_pkey;
ALTER TABLE track DROP CONSTRAINT track_pkey;
ALTER TABLE submission DROP CONSTRAINT submission_pkey;
ALTER TABLE stats_user_agents DROP CONSTRAINT stats_user_agents_pkey;
ALTER TABLE stats_top_accounts DROP CONSTRAINT stats_top_accounts_pkey;
ALTER TABLE stats_lookups DROP CONSTRAINT stats_lookups_pkey;
ALTER TABLE stats DROP CONSTRAINT stats_pkey;
ALTER TABLE source DROP CONSTRAINT source_pkey;
ALTER TABLE replication_control DROP CONSTRAINT replication_control_pkey;
ALTER TABLE recording_acoustid DROP CONSTRAINT recording_acoustid_pkey;
ALTER TABLE mirror_queue DROP CONSTRAINT mirror_queue_pkey;
ALTER TABLE meta DROP CONSTRAINT meta_pkey;
ALTER TABLE format DROP CONSTRAINT format_pkey;
ALTER TABLE foreignid_vendor DROP CONSTRAINT foreignid_vendor_pkey;
ALTER TABLE foreignid DROP CONSTRAINT foreignid_pkey;
ALTER TABLE fingerprint_source DROP CONSTRAINT fingerprint_source_pkey;
ALTER TABLE fingerprint_index_queue DROP CONSTRAINT fingerprint_index_queue_pkey;
ALTER TABLE fingerprint DROP CONSTRAINT fingerprint_pkey;
ALTER TABLE application DROP CONSTRAINT application_pkey;
ALTER TABLE acoustid_mb_replication_control DROP CONSTRAINT acoustid_mb_replication_control_pkey;
ALTER TABLE account_stats_control DROP CONSTRAINT account_stats_control_pkey;
ALTER TABLE account_openid DROP CONSTRAINT account_openid_pkey;
ALTER TABLE account_google DROP CONSTRAINT account_google_pkey;
ALTER TABLE account DROP CONSTRAINT account_pkey;