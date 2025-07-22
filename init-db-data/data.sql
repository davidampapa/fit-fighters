-- Insert fighters
INSERT INTO fighter (id, first_name, last_name, weight_division, age, win_count, lose_count, draw_count, active) VALUES
(1, 'John', 'Doe', 'Lightweight', 28, 5, 2, 1, true),
(2, 'Mike', 'Tyson', 'Heavyweight', 34, 25, 1, 0, true),
(3, 'Anna', 'Lee', 'Featherweight', 26, 10, 3, 2, true),
(4, 'Carlos', 'Santos', 'Welterweight', 31, 8, 4, 1, false);

-- Insert places
INSERT INTO place (id, name, address, capacity) VALUES
(1, 'FIT Arena', '123 Combat St, Prague', 5000),
(2, 'Warrior Dome', '456 Fight Ave, Brno', 3000);

-- Insert fights
INSERT INTO fight (id, date, time, martial_art, place_id, winner_id) VALUES
(1, '2025-06-10', '18:00:00', 'MMA', 1, 1),
(2, '2025-07-01', '20:00:00', 'Boxing', 2, 2),
(3, '2025-07-15', '19:00:00', 'Muay Thai', 1, 3);

-- Insert fight_fighters relations (many-to-many)
INSERT INTO fight_fighters (fight_id, fighters_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 4),
(3, 3),
(3, 1);
