/*2.1 - sprawdzone!*/

SELECT distinct cl.vat, cl.name, pnc.phone
FROM client as cl, employee as e, doctor as d, consultation as co, appointment as ap, phone_number_client as pnc
WHERE e.name = "Jane Sweettooth" and d.vat = e.vat and d.vat = co.vat_doctor 
and ap.vat_doctor = co.vat_doctor and ap.date_timestamp = co.date_timestamp and cl.vat = ap.vat_client and pnc.vat = cl.vat
ORDER BY cl.name;

/*2.2 - sprawdzone!*/

SELECT distinct td.vat, te.name, pe.name, sr.evaluation, sr.description
FROM employee as te, employee as pe, trainee_doctor as td, supervision_report as sr
WHERE (sr.evaluation < 3 OR sr.description LIKE '%insufficient%') 
    AND (sr.vat = td.vat AND td.supervisor = pe.vat AND td.vat = te.vat)
    ORDER BY sr.evaluation DESC;


/*2.3 
NIEPEWNE i chujowe do poprawy!!!
*/

SELECT cl.name, cl.city, cl.vat
FROM client as cl, consultation as co
INNER JOIN appointment as ap 
ON MAX(ap.date_timestamp) = co.date_timestamp
WHERE co.vat_doctor = ap.vat_doctor AND co.date_timestamp = ap.date_timestamp AND cl.vat = ap.vat_client
GROUP BY co.vat_doctor, co.vat_timestamp;
HAVING co.soap_o LIKE '%gingivitis%' OR co.soap_o LIKE '%periodontitis%';


/*2.4 - coś zwraca ŹLE!!!
*/
SELECT DISTINCT cl.vat, cl.name, cl.street, cl.city, cl.zip
FROM client as cl, appointment as ap
LEFT JOIN consultation as co 
ON ap.vat_doctor = co.vat_doctor AND ap.date_timestamp = co.date_timestamp
WHERE co.vat_doctor IS NULL AND co.date_timestamp IS NULL AND cl.vat = ap.vat_client;

/*2.5
consultation_diagnostic(VAT_doctor,date_timestamp,ID)
prescription(name,lab,VAT_doctor,date_timestamp,ID,dosage,description)
coś zwraca jedno i drugie trzeba sprawdzić które lepsze
*/

SELECT pr.id, pr.name, pr.lab, COUNT(*) as medCount
FROM prescription as pr
INNER JOIN consultation_diagnostic as cd
ON pr.vat_doctor = cd.vat_doctor AND pr.date_timestamp = cd.date_timestamp AND pr.id = cd.id
WHERE pr.description IS NOT NULL
GROUP BY pr.id
ORDER BY medCount;

/*albo - chyba lepsze i chyba działa!!!*/

SELECT pr.id, pr.name, pr.lab, COUNT(*) as medCount
FROM prescription as pr
WHERE pr.description IS NOT NULL
GROUP BY pr.id, pr.name, pr.lab
ORDER BY medCount, pr.id;



/*2.6 - kurewsko cieżkie, na razie nie warto*/

/*2.7

diagnostic_code(ID,description)

diagnostic_code_relation(ID1,ID2,type)

consultation_diagnostic(VAT_doctor,date_timestamp,ID)

medication(name,lab)

prescription(name,lab,VAT_doctor,date_timestamp,ID,dosage,description)

1.opcja

SELECT s.PersonID, s.Rating
  FROM (SELECT p.PersonID, t.Rating, COUNT(*) AS RatingCount
          FROM PersonTable AS p
          JOIN TransactionTable AS t
            ON p.TransactionID = t.TransactionID
         GROUP BY p.PersonID, t.Rating
       ) AS s
  JOIN (SELECT s.PersonID, MAX(s.RatingCount) AS MaxRatingCount
          FROM (SELECT p.PersonID, t.Rating, COUNT(*) AS RatingCount
                  FROM PersonTable AS p
                  JOIN TransactionTable AS t
                    ON p.TransactionID = t.TransactionID
                 GROUP BY p.PersonID, t.Rating
               ) AS s
         GROUP BY s.PersonID
       ) AS m
    ON s.PersonID = m.PersonID AND s.RatingCount = m.MaxRatingCount


    2. opcja

    
/*
select cnt1.`Time`,MAX(cnt1.`Value`)
from (select COUNT(*) as total, `Time`,`Value`
from `my_table`
group by `Time`,`Value`) cnt1,
(select MAX(total) as maxtotal from (select COUNT(*) as total, 
`Time`,`Value` from `my_table` group by `Time`,`Value`) cnt3 ) cnt2
where cnt1.total = cnt2.maxtotal GROUP BY cnt1.`Time`
*/

/*coś zwróciło*/

SELECT x.id, x.name
    FROM (SELECT pre.id, pre.name, pre.lab, COUNT(*) as RatingCount
            FROM prescription as pre
            GROUP BY pre.id) as x
    JOIN (SELECT x.id, x.name, x.lab, MAX(x.RatingCount) as MaxRatingCount
            FROM (SELECT pre.id, pre.name, pre.lab, COUNT(*) as RatingCount
                    FROM prescription as pre
                    GROUP BY pre.id) as x
            GROUP BY x.id) as y      
    ON x.id = y.id AND x.name = y.name AND x.lab = y.lab AND x.RatingCount = y.MaxRatingCount;



/*2.9

INSERT INTO appointment(vat_doctor,date_timestamp,description,vat_client)

INSERT INTO consultation(vat_doctor, date_timestamp, soap_s, soap_o, soap_a, soap_p)
*/

SELECT cl.name, cl.street, cl.city, cl.zip 
FROM client as cl, 


/*tu będzie trzeba chyba sprawdzić coś z EXISTING czy innym gównem - wykład slajd 25!!!*/
