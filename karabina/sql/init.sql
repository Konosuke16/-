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
    companion VARCHAR(255) NOT NULL,
    age_group VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    location VARCHAR(255) NOT NULL,
    link VARCHAR(255) NOT NULL
);

CREATE TABLE user{
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
}
CREATE TABLE favorites (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES user(id),
    event_id INTEGER NOT NULL REFERENCES event(id),
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO event (name, description, image) VALUES
('奈良公園秋のフェスティバル', '奈良公園で開催される秋の季節を祝うフェスティバル。伝統的な文化パフォーマンスや美味しい食べ物の屋台が並びます。', 'nara_park_autumn.jpg'),
('東大寺の儀式', '東大寺で毎年行われる宗教的な儀式。伝統的な儀式や灯籠の展示が行われます。', 'todaiji_ceremony.jpg'),
('鹿の餌やり体験', '家族向けのイベントで、訪問者が奈良の有名な鹿に餌を与えて触れ合うことができます。', 'deer_feeding.jpg'),
('春日大社の灯籠祭り', '春日大社で行われる灯籠祭り。数千の灯籠が点灯され、幻想的な雰囲気を楽しむことができます。', 'kasuga_taisha_lantern_festival.jpg'),
('奈良伝統工芸フェア', '奈良の伝統工芸品を展示・販売するフェア。地元の職人たちの技を直接見ることができます。', 'nara_traditional_crafts_fair.jpg');

INSERT INTO event_search (name, event_type, companion, age_group, date, location, link) VALUES
('奈良公園秋のフェスティバル', '祭り', '家族', '小学生','2021-11-15', '奈良公園', 'https://www.nara-park.com/'),
('東大寺の儀式', '神社仏閣', 'ボッチ', '大学生','2021-12-01', '東大寺', 'https://www.todaiji.or.jp/'),
('鹿の餌やり体験', '体験', '家族', '小学生','2021-11-20', '奈良公園', 'https://www.nara-park.com/'),
('春日大社の灯籠祭り', '祭り', '恋人', '中高生','2021-11-25', '春日大社', 'https://www.kasugataisha.or.jp/'),
('奈良伝統工芸フェア', '展覧会', '同僚', 'シニア','2021-11-30', '奈良市民会館', 'https://www.nara-crafts-fair.com/');