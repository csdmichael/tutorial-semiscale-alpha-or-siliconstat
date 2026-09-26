-- Forward-only migration 0002: reference data so a new environment is not empty.
-- Re-runnable: each row is inserted only when its title is absent.
INSERT INTO siliconstat (title, reference, status, priority)
SELECT 'Sample SiliconStat 1', 'S-0001', 'new', 'low'
WHERE NOT EXISTS (SELECT 1 FROM siliconstat WHERE title = 'Sample SiliconStat 1');
INSERT INTO siliconstat (title, reference, status, priority)
SELECT 'Sample SiliconStat 2', 'S-0002', 'in-progress', 'normal'
WHERE NOT EXISTS (SELECT 1 FROM siliconstat WHERE title = 'Sample SiliconStat 2');
INSERT INTO siliconstat (title, reference, status, priority)
SELECT 'Sample SiliconStat 3', 'S-0003', 'complete', 'high'
WHERE NOT EXISTS (SELECT 1 FROM siliconstat WHERE title = 'Sample SiliconStat 3');
INSERT INTO siliconstat (title, reference, status, priority)
SELECT 'Sample SiliconStat 4', 'S-0004', 'new', 'low'
WHERE NOT EXISTS (SELECT 1 FROM siliconstat WHERE title = 'Sample SiliconStat 4');
