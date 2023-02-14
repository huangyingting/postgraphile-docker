\connect postgraphile;

/*Create some dummy users*/
INSERT INTO forum.user (username) VALUES
('Captain America'),
('Iron Man'),
('Thor');

/*Create some dummy posts*/
INSERT INTO forum.post (title, body, author_id) VALUES
('Marvel Contest of Champions', 'Casssie Lang enters the Contest! Find out who she''s up against in the new Champion Reveal trailer!', 1),
('Dives Into The Quantum Realm', 'New dimensions, Steampunk Variants, unexplored Locations. Join us as we travel INTO THE QUANTUM REALM! Are you ready to explore the unexplored?', 2),
('Best Moments in Games', 'Take a look back at some of the stand-out moments in Marvel Games this year!', 3);