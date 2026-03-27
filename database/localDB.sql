DROP TABLE IF EXISTS servers;
DROP TABLE IF EXISTS players;


CREATE TABLE IF NOT EXISTS servers (
    guild_id VARCHAR(20) PRIMARY KEY,
    guild_name VARCHAR(255) NOT NULL,
    clan_tag VARCHAR(15),
    war_channel_id VARCHAR(20),
    raid_channel_id VARCHAR(20),
    last_war_reminder VARCHAR(20) DEFAULT NULL,
    last_raid_reminder VARCHAR(20) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS players (
    discord_id VARCHAR(20) NOT NULL,
    discord_username VARCHAR(255) NOT NULL,
    guild_id VARCHAR(20) NOT NULL,
    guild_name VARCHAR(255) NOT NULL,
    player_tag VARCHAR(15) NOT NULL,
    is_premium BOOLEAN NOT NULL DEFAULT 0, -- M 0/1
    PRIMARY KEY (discord_id, guild_id)
);