CREATE TABLE event (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    image VARCHAR(255) NOT NULL
);

CREATE TABLE event_search (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    event_type VARCHAR(255) NOT NULL,
    age_group VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    location VARCHAR(255) NOT NULL
);

INSERT INTO event (name, description, image) VALUES
('奈良公園秋のフェスティバル', '奈良公園で開催される秋の季節を祝うフェスティバル。伝統的な文化パフォーマンスや美味しい食べ物の屋台が並びます。', 'nara_park_autumn.jpg'),
('東大寺の儀式', '東大寺で毎年行われる宗教的な儀式。伝統的な儀式や灯籠の展示が行われます。', 'todaiji_ceremony.jpg'),
('鹿の餌やり体験', '家族向けのイベントで、訪問者が奈良の有名な鹿に餌を与えて触れ合うことができます。', 'deer_feeding.jpg'),
('春日大社の灯籠祭り', '春日大社で行われる灯籠祭り。数千の灯籠が点灯され、幻想的な雰囲気を楽しむことができます。', 'kasuga_taisha_lantern_festival.jpg'),
('奈良伝統工芸フェア', '奈良の伝統工芸品を展示・販売するフェア。地元の職人たちの技を直接見ることができます。', 'nara_traditional_crafts_fair.jpg');

INSERT INTO event_search (name, event_type, age_group, date, location) VALUES
('奈良公園秋のフェスティバル', 'フェスティバル', '家族向け', '2021-11-15', '奈良公園'),
('東大寺の儀式', '宗教的', '大人向け', '2021-12-01', '東大寺'),
('鹿の餌やり体験', '体験', '家族向け', '2021-11-20', '奈良公園'),
('春日大社の灯籠祭り', '祭り', '家族向け', '2021-11-25', '春日大社'),
('奈良伝統工芸フェア', 'フェア', '大人向け', '2021-11-30', '奈良市民会館');