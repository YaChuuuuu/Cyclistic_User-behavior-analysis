/*檢查重複ride_id資料*/
WITH
  duplicate_num AS(
  SELECT
    *,
    ROW_NUMBER() OVER(PARTITION BY ride_id ORDER BY started_at) AS num
  FROM
    yachu0512.Case_study1_Coursera.test2)
SELECT
  *
FROM
  yachu0512.Case_study1_Coursera.test2
WHERE
  ride_id IN (SELECT ride_id FROM duplicate_num  WHERE num > 1 )
ORDER BY
  ride_id;



/*檢查單個station_id和對應到的station_name*/
WITH
  station AS(
  SELECT
    DISTINCT end_station_id,
    end_station_name
  FROM
    `yachu0512.Case_study1_Coursera.test3`),
  duplicate AS(
  SELECT
    *,
    ROW_NUMBER() OVER(PARTITION BY end_station_id ORDER BY end_station_name) AS num
  FROM
    station)
SELECT
  *
FROM
  station
WHERE
  end_station_id IN (SELECT end_station_id FROM duplicate WHERE num>=2) ;



/*檢查null值和整體的資料分布*/
WITH
  nulldata AS (
  SELECT
    EXTRACT(MONTH FROM started_at) AS mon,
    COUNT(*) AS nulldata
  FROM
    `yachu0512.Case_study1_Coursera.test1`
  WHERE
    (end_lat IS NULL AND end_lng IS NULL) AND end_station_id IS NULL
  GROUP BY
    mon),
  total AS(
  SELECT
    EXTRACT(MONTH FROM started_at) AS mon,
    COUNT(*) AS total
  FROM
    `yachu0512.Case_study1_Coursera.test1`
  GROUP BY
    mon)
SELECT
  t.mon,
  t.total,
  n.nulldata,
  ROUND(nulldata/total,3) AS ratio
FROM
  total t
LEFT JOIN
  nulldata n
ON
  t.mon=n.mon
ORDER BY
  t.mon ;



/*找到異常的 end_station_id 和其平均值*/
WITH
  excludedata AS (
  SELECT
    *
  FROM
    `yachu0512.Case_study1_Coursera.test3`
  WHERE
    end_lat IS NULL
    OR end_lng IS NULL
    OR end_lat =0
    OR end_lng =0)
  SELECT
    end_station_id,
    AVG(end_lat) AS avg_lat,
    AVG(end_lng) AS avg_lng
  FROM
    `yachu0512.Case_study1_Coursera.test3`
  WHERE
    end_station_id IN(SELECT DISTINCT end_station_id FROM excludedata)
    AND ride_id NOT IN (SELECT ride_id FROM excludedata)
  GROUP BY
    end_station_id;

