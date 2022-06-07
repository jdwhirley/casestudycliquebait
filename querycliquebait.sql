--How many times was each product viewed?
SELECT page_id, event_type, COUNT(*)
FROM clique_bait.events 
WHERE event_type=1
GROUP BY page_id, events.event_type;

