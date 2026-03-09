-- ==========================================
-- 1. CATÉGORIES 
-- ==========================================
INSERT INTO categories (category_id, name, slug, description) VALUES 
('11111111-1111-1111-1111-000000000001', 'Implants & Cybernétique', 'implants-cyber', 'Pour modifier la viande faible que vous appelez un corps.'),
('11111111-1111-1111-1111-000000000002', 'Armement de Poche', 'armement-poche', 'Parce qu''on ne sait jamais qui on va croiser dans les bas-fonds.'),
('11111111-1111-1111-1111-000000000003', 'Software Illégal', 'software-illegal', 'Clés USB trouvées par terre. Ne pas scanner avec l''antivirus.'),
('11111111-1111-1111-1111-000000000004', 'Streetwear Néon', 'streetwear-neon', 'La pluie acide abîme les vêtements, pas le style.'),
('11111111-1111-1111-1111-000000000005', 'Rations de Survie', 'rations-survie', 'Nourriture de synthèse. Le goût plastique est normal.'),
('11111111-1111-1111-1111-000000000006', 'Gadgets Corpo', 'gadgets-corpo', 'Totalement inutiles, mais indispensables pour flexer.')
ON CONFLICT (slug) DO NOTHING;

-- ==========================================
-- 2. PRODUITS
-- ==========================================

-- A. La grosse catégorie (10 Produits : Implants & Cybernétique)
INSERT INTO products (product_id, name, slug, description, image_url) VALUES 
('22222222-2222-2222-2222-000000000001', 'Oeil Bionique RGB', 'oeil-bionique-rgb', 'Pour voir dans le noir et clignoter en soirée techno.', 'https://picsum.photos/seed/oeil/400'),
('22222222-2222-2222-2222-000000000002', 'Doigt Clé USB-C', 'doigt-usb-c', 'Ne perdez plus jamais vos données. Littéralement. Branchement douloureux.', 'https://picsum.photos/seed/doigt/400'),
('22222222-2222-2222-2222-000000000003', 'Puce "Je connais le Kung-Fu"', 'puce-kung-fu', 'Attention: Peut provoquer des envies soudaines de porter des lunettes noires.', 'https://picsum.photos/seed/puce/400'),
('22222222-2222-2222-2222-000000000004', 'Bras Mécanique Industriel', 'bras-meca-indus', 'Pratique pour ouvrir les pots de confiture récalcitrants.', 'https://picsum.photos/seed/bras/400'),
('22222222-2222-2222-2222-000000000005', 'Traducteur Neuronal Félin', 'traducteur-chat', 'Découvrez enfin que votre chat vous méprise avec des mots clairs.', 'https://picsum.photos/seed/chat/400'),
('22222222-2222-2222-2222-000000000006', 'Implant Sommeil Express', 'sommeil-express', 'Dormez 8 heures en 15 minutes. Risque de paralysie faciale temporaire.', 'https://picsum.photos/seed/sommeil/400'),
('22222222-2222-2222-2222-000000000007', 'Foie Synthétique Anti-Gueule de Bois', 'foie-anti-gdb', 'Le meilleur ami des soirées clandestines.', 'https://picsum.photos/seed/foie/400'),
('22222222-2222-2222-2222-000000000008', 'Générateur d''Excuses Intégré', 'excuses-auto', 'Connecté directement à la zone de la parole. Idéal face aux boss corpos.', 'https://picsum.photos/seed/cerveau/400'),
('22222222-2222-2222-2222-000000000009', 'Module de Mémoire Externe', 'memoire-externe', 'Pour enfin se souvenir du mot de passe de son crypto-wallet.', 'https://picsum.photos/seed/ram/400'),
('22222222-2222-2222-2222-000000000010', 'Cerveau de Secours (Occasion)', 'cerveau-secours', 'Légèrement rayé, effacez les souvenirs de l''ancien proprio avant usage.', 'https://picsum.photos/seed/jar/400'),

-- B. Les autres catégories (2 Produits chacune)
('22222222-2222-2222-2222-000000000011', 'Parapluie Taser Létal', 'parapluie-taser', 'Chantez sous la pluie acide, électrocutez les pickpockets.', 'https://picsum.photos/seed/taser/400'),
('22222222-2222-2222-2222-000000000012', 'Grenade EMP (Reconditionnée)', 'emp-recon', 'Ne pas utiliser près du pacemaker cybernétique de mamie.', 'https://picsum.photos/seed/emp/400'),

('22222222-2222-2222-2222-000000000013', 'Script "Efface-Histo-Post-Mortem"', 'script-efface-histo', 'Le software le plus vendu de l''année 2077.', 'https://picsum.photos/seed/code/400'),
('22222222-2222-2222-2222-000000000014', 'IA de Compagnie Dépressive', 'ia-depressive', 'Elle soupire à chaque fois que vous l''allumez.', 'https://picsum.photos/seed/ia/400'),

('22222222-2222-2222-2222-000000000015', 'Veste Holographique Buggée', 'veste-holo', 'Change de couleur quand vous mentez. Un enfer pour le poker.', 'https://picsum.photos/seed/veste/400'),
('22222222-2222-2222-2222-000000000016', 'Baskets Auto-Laçantes', 'baskets-auto', 'Amputation des orteils non couverte par la garantie.', 'https://picsum.photos/seed/shoes/400'),

('22222222-2222-2222-2222-000000000017', 'Tube Nutritif Goût "Pizza 2010"', 'tube-pizza', 'Le goût de la nostalgie sous forme de pâte grise.', 'https://picsum.photos/seed/tube/400'),
('22222222-2222-2222-2222-000000000018', 'Boisson Énergisante à l''Uranium', 'boisson-uranium', 'Garantie sans sucre. Brille dans le noir.', 'https://picsum.photos/seed/drink/400'),

('22222222-2222-2222-2222-000000000019', 'Tamagotchi Quantique', 'tamagotchi-quantique', 'Il est à la fois vivant et mort jusqu''à ce que vous regardiez l''écran.', 'https://picsum.photos/seed/tama/400'),
('22222222-2222-2222-2222-000000000020', 'Détecteur de Sarcasme', 'detecteur-sarcasme', 'Il a explosé pendant que j''écrivais cette ligne.', 'https://picsum.photos/seed/radar/400')
ON CONFLICT (slug) DO NOTHING;

-- ==========================================
-- 3. LIAISONS (Produits <-> Catégories)
-- ==========================================
INSERT INTO product_categories (product_id, category_id) VALUES 
-- Les 10 Implants (ID 1)
('22222222-2222-2222-2222-000000000001', '11111111-1111-1111-1111-000000000001'),
('22222222-2222-2222-2222-000000000002', '11111111-1111-1111-1111-000000000001'),
('22222222-2222-2222-2222-000000000003', '11111111-1111-1111-1111-000000000001'),
('22222222-2222-2222-2222-000000000004', '11111111-1111-1111-1111-000000000001'),
('22222222-2222-2222-2222-000000000005', '11111111-1111-1111-1111-000000000001'),
('22222222-2222-2222-2222-000000000006', '11111111-1111-1111-1111-000000000001'),
('22222222-2222-2222-2222-000000000007', '11111111-1111-1111-1111-000000000001'),
('22222222-2222-2222-2222-000000000008', '11111111-1111-1111-1111-000000000001'),
('22222222-2222-2222-2222-000000000009', '11111111-1111-1111-1111-000000000001'),
('22222222-2222-2222-2222-000000000010', '11111111-1111-1111-1111-000000000001'),

-- Armement de Poche (ID 2)
('22222222-2222-2222-2222-000000000011', '11111111-1111-1111-1111-000000000002'),
('22222222-2222-2222-2222-000000000012', '11111111-1111-1111-1111-000000000002'),

-- Software Illégal (ID 3)
('22222222-2222-2222-2222-000000000013', '11111111-1111-1111-1111-000000000003'),
('22222222-2222-2222-2222-000000000014', '11111111-1111-1111-1111-000000000003'),

-- Streetwear (ID 4)
('22222222-2222-2222-2222-000000000015', '11111111-1111-1111-1111-000000000004'),
('22222222-2222-2222-2222-000000000016', '11111111-1111-1111-1111-000000000004'),

-- Rations (ID 5)
('22222222-2222-2222-2222-000000000017', '11111111-1111-1111-1111-000000000005'),
('22222222-2222-2222-2222-000000000018', '11111111-1111-1111-1111-000000000005'),

-- Gadgets Corpo (ID 6)
('22222222-2222-2222-2222-000000000019', '11111111-1111-1111-1111-000000000006'),
('22222222-2222-2222-2222-000000000020', '11111111-1111-1111-1111-000000000006')
ON CONFLICT DO NOTHING;

-- ==========================================
-- 4. VARIANTES
-- ==========================================
INSERT INTO variants (product_id, sku, price, attributes) VALUES 
-- Oeil Bionique (Couleurs et modes)
('22222222-2222-2222-2222-000000000001', 'EYE-RED-TERM', 1500.00, '{"couleur_iris": "Rouge Laser", "vision_thermique": true}'::jsonb),
('22222222-2222-2222-2222-000000000001', 'EYE-BLUE-REP', 1200.00, '{"couleur_iris": "Bleu Réplicant", "vision_thermique": false}'::jsonb),

-- Doigt USB (Stockage)
('22222222-2222-2222-2222-000000000002', 'FINGER-1TB', 350.00, '{"stockage": "1TB", "douleur_installation": "Supportable"}'::jsonb),
('22222222-2222-2222-2222-000000000002', 'FINGER-128TB', 2999.99, '{"stockage": "128TB", "douleur_installation": "Anesthésie requise"}'::jsonb),

-- Puce Kung-Fu (Styles de combat)
('22222222-2222-2222-2222-000000000003', 'CHIP-KUNG-NEO', 5000.00, '{"style": "L''Élu", "risque_de_surcharge": "Élevé"}'::jsonb),
('22222222-2222-2222-2222-000000000003', 'CHIP-KUNG-DRK', 3500.00, '{"style": "Drunken Master", "risque_de_surcharge": "Modéré, nausées probables"}'::jsonb),

-- Veste Holographique (Tailles)
('22222222-2222-2222-2222-000000000015', 'VEST-HOLO-M', 250.00, '{"taille": "M", "batterie": "2 heures"}'::jsonb),
('22222222-2222-2222-2222-000000000015', 'VEST-HOLO-L', 250.00, '{"taille": "L", "batterie": "2 heures"}'::jsonb)

ON CONFLICT (sku) DO NOTHING;