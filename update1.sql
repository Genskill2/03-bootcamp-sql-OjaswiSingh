UPDATE  publisher  
SET     name='Prentice Hall'
WHERE   publisher.id=(SELECT id FROM publisher WHERE publisher.name='PHI');

