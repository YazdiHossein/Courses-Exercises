SELECT * FROM booking;
SELECT * FROM passenger;
SELECT * FROM schedule;
SELECT * FROM fleet;
SELECT * FROM destinations;
SELECT * FROM coachtype;
SELECT * FROM ibatdemo;

SELECT bk.id, bk.bookingDt BKDT, sc.scheduleDt SCHDT, ps.firstName , fl.registration, ct.name, ct.capacity, ds.title, ds.fare
FROM booking AS bk
JOIN passenger AS ps ON ps.id = bk.passengerId
JOIN schedule AS sc ON sc.id = bk.scheduleid
JOIN fleet AS fl ON fl.id = sc.fleetid
JOIN coachtype AS ct ON ct.id = fl.coachTypeId
JOIN destinations AS ds ON ds.id = sc.destinationId;

