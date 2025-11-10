-- Creating openings
SELECT setval(pg_get_serial_sequence('public.opening', 'id'), 1, false);
INSERT INTO public.opening (name, "ecoCode", description, "isForWhite") 
    VALUES 
        ('London System', 'D02', 'Hello World!', true),
        ('Caro Kann Defense', 'B10', 'Hello World!', false);

-- Creating Variations
INSERT INTO public.variation (name, moves, "openingId")
    VALUES
        ('[Be7] 1', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Be7 7. Bd3 O-O 8. Ne5
Nxe5 9. dxe5 Nd7 10. h4 f6 11. Qh5 f5 12. g4 g6 13. Qh6 Kh8 14. gxf5 gxf5 15.
Nf3 *', 1),
 ('[Be7] 2', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Be7 7. Bd3 O-O 8. Ne5
Nxe5 9. dxe5 Nd7 10. h4 f6 11. Qh5 g6 12. Bxg6 hxg6 13. Qxg6+ Kh8 14. Qh6+ Kg8 Rh3 *', 1),
 ('[Be7] 3', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Be7 7. Bd3 O-O 8. Ne5
Nxe5 9. dxe5 Nd7 10. h4 c4 11. Bxh7+ Kxh7 12. Qh5+ Kg8 13. Nf3 *', 1),
 ('[Be7] 4', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Be7 7. Bd3 O-O 8. Ne5
Nxe5 9. dxe5 Nd7 10. h4 f5 11. Nf3 *', 1),
('[Be7] 5', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Be7 7. Bd3 O-O 8. Ne5
Nxe5 9. dxe5 Nd7 10. h4 Qc7 11. Bxh7+ Kxh7 12. Qh5+ Kg8 13. Nf3 *', 1),

('[Bd6] 1', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Bd6 7. Bg3 O-O 8. Bd3
b6 9. e4 dxe4 10. Nxe4 Nxe4 11. Bxe4 Bb7 12. dxc5 Bxc5 13. Qa4 Qc8 14. Bxh7+
Kxh7 15. Qh4+ *', 1),
('[Bd6] 2', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Bd6 7. Bg3 O-O 8. Bd3
b6 9. e4 Be7 10. e5 Nh5 11. Ng5 Bxg5 12. Qxh5 g6 13. Qe2 cxd4 14. h4 Bh6 15. h5
dxc3 16. bxc3 Bg7 17. Kf1 d4 18. c4 *', 1),
('[Bd6] 3', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Bd6 7. Bg3 O-O 8. Bd3
b6 9. e4 Be7 10. e5 Nh5 11. Ng5 Nxg3 12. Bxh7+ Kh8 13. Nxf7+ Rxf7 14. hxg3 *', 1),
('[Bd6] 4', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Bd6 7. Bg3 O-O 8. Bd3
Re8 9. Ne5 Qc7 10. f4 cxd4 11. exd4 Nd7 12. Bxh7+ *', 1),
('[Bd6] 5', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Bd6 6. Bg3 O-O 7. Ngf3 Qc7 8. Rc1
Nbd7 9. c4 b6 10. b4 *', 1),

('[Double Knight] 1', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 cxd4 7. exd4 Nh5 8. Be3
Bd6 9. Ne5 g6 10. Nd3 O-O 11. g3 f5 12. Bh6 Re8 13. Be2 Nf6 14. Nf3 *', 1),
('[Double Knight] 2', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 cxd4 7. exd4 Bd6 8. Bg3', 1),
('[Double Knight] 3', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Nh5 7. Bg5 f6 8. Bh4 g6 9. Bd3 Be7 10. O-O b6 11. Re1 O-O 12. e4 *', 1),
('[Double Knight] 4', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Ngf3 Nh5 7. Bg5 f6 8. Bh4 g6 9. Bd3 Be7 10. O-O b6 11. Re1 O-O 12. e4 *', 1),
('[Double Knight] 5', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. c3 Nc6 5. Nd2 Qb6 6. Qb3 c4 7. Qc2 Bg4 8. b3
cxb3 9. axb3 e6 10. b4 *', 1),
('[Double Knight] 6', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. c3 Nc6 5. Nd2 cxd4 6. exd4 Bf5 7. Ngf3 e6 8. Qb3
Qc8 9. Nh4 Bg6 10. Nxg6 hxg6 11. Bd3 Be7 12. O-O O-O 13. Rae1 a6 14. Qd1 *', 1),
('[Double Knight] 7', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. c3 Nc6 5. Nd2 cxd4 6. exd4 Bf5 7. Ngf3 e6 8. Qb3
Qc8 9. Nh4 Bg6 10. Nxg6 hxg6 11. Bd3 Be7 12. O-O O-O 13. Rae1 a6 14. Qd1 *', 1),
('[Double Knight] 8', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. c3 Nc6 5. Nd2 cxd4 6. exd4 Bf5 7. Ngf3 e6 8. Qb3
Qc8 9. Nh4 Be4 10. Nxe4 dxe4 11. g3 *', 1),
('[Double Knight] 9', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. c3 Nc6 5. Nd2 cxd4 6. exd4 Bf5 7. Ngf3 e6 8. Qb3
Qc8 9. Nh4 Be4 10. Nxe4 Nxe4 11. Nf3 *', 1),
('[Double Knight] 10', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. c3 Nc6 5. Nd2 cxd4 6. exd4 Bg4 7. Qb3 Qc8 8.
Ngf3 e6 9. Bd3 Be7 10. O-O O-O 11. Ne5 Bh5 12. Ndf3 *', 1),

('[Reverse Albin] 1', 'd4 d5 2. Bf4 c5 3. e4 dxe4 4. d5 Nf6 5. Nc3 e6 6. Bb5+ Bd7 7. dxe6 fxe6 8.
Bxd7+ Qxd7 9. Qxd7+ Nbxd7 10. O-O-O *', 1),
('[Reverse Albin] 2', 'd4 d5 2. Bf4 c5 3. e4 dxe4 4. d5 Nf6 5. Nc3 g6 6. Qd2 Bg7 7. O-O-O O-O 8. Bh6
Nbd7 9. h4 a6 10. h5 Nxh5 11. Rxh5 gxh5 12. Qg5 *', 1),
('[Reverse Albin] 3', 'd4 d5 2. Bf4 c5 3. e4 dxe4 4. d5 Nf6 5. Nc3 a6 6. Qe2 g6 7. O-O-O Bg7 8. Nxe4
Nxe4 9. Qxe4 *', 1),
('[Reverse Albin] 4', 'd4 d5 2. Bf4 c5 3. e4 cxd4 4. Qxd4 dxe4 5. Qxd8+ Kxd8 6. Nc3 Nf6 7. O-O-O+
Nbd7 8. Nge2 *', 1),

('[dxc5] 1', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 e6 5. b4 a5 6. c3 Nc6 7. Bb5 Bd7 8. Qb3 Ne4 9. f3 e5 10. fxe4 exf4 11. exd5 Qh4+ 12. Kd1 *', 1),
('[dxc5] 2', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 e6 5. b4 a5 6. c3 Nc6 7. Bb5 Bd7 8. Qb3 Nh5 9. Ne2 Nxf4 10. Nxf4 g6 11. a4 *', 1),
('[dxc5] 3', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 e6 5. b4 a5 6. c3 Nc6 7. Bb5 Bd7 8. Qb3
axb4 9. cxb4 Ne4 10. Ne2 *', 1),
('[dxc5] 4', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 e6 5. b4 a5 6. c3 Nc6 7. Bb5 Be7 8. Nf3 O-O 9. Bxc6 bxc6 10. Nd4 Qd7 11. O-O *', 1),
('[dxc5] 5', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 e6 5. b4 a5 6. c3 axb4 7. cxb4 b6 8. Bxb8
Rxb8 9. Bb5+ *', 1),
('[dxc5] 6', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 e6 5. b4 Be7 6. a3 O-O 7. Nd2 *', 1),
('[dxc5] 7', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 Qa5+ 5. Nd2 Qxc5 6. Ngf3 Nc6 7. a3 *', 1),
('[dxc5] 8', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 Nc6 5. Bb5 Qa5+ 6. Nc3 a6 7. Bxc6+ bxc6 8.
Nf3 e6 9. O-O Bd7 10. a3 Qxc5 11. Na4 Qa7 12. c4 *', 1),
('[dxc5] 9', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 Nc6 5. Bb5 Qa5+ 6. Nc3 a6 7. Bxc6+ bxc6 8.
Nf3 Qxc5 9. Ne5 e6 10. O-O Bb7 11. Na4 Qa5 12. c4 Be7 13. b4 *', 1),
('[dxc5] 10', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 Nc6 5. Bb5 Qa5+ 6. Nc3 a6 7. Bxc6+ bxc6 8.
Nf3 Ne4 9. Qd4 Nxc3 10. Qxc3 Qxc3+ 11. bxc3 f6 12. Bc7 e5 13. Bb6 *', 1),
('[dxc5] 11', 'd4 d5 2. Bf4 Nf6 3. e3 c5 4. dxc5 Nc6 5. Bb5 Qa5+ 6. Nc3 e6 7. a3 Ne4 8. Ne2', 1),

('[Stone Wall] 1', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Bd3 Bd6 7. Bxd6 Qxd6 8. f4
b6 9. Ngf3 Bb7 10. Ne5 O-O 11. g4 Ne7 12. Qf3 *', 1),
('[Stone Wall] 2', 'd4 d5 2. Bf4 Nf6 3. e3 e6 4. Nd2 c5 5. c3 Nc6 6. Bd3 Bd6 7. Bxd6 Qxd6 8. f4
cxd4 9. cxd4 Bd7 10. a3 O-O 11. Ngf3 Ne7 12. O-O Bc6 13. Ne5 Nd7 14. Qh5 f5 15.
Nxd7 Qxd7 16. Nf3 Qe8 17. Qxe8 Rfxe8 18. Rfc1 *', 1),