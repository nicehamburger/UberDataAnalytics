 CREATE OR REPLACE TABLE `project-uberdataanalytics.Uber_Transformed_Dataset.AnalysisReport` AS (
  SELECT
    f.VendorID,
    dt.tpep_pickup_datetime,
    dt.tpep_dropoff_datetime,
    p.passenger_count,
    td.trip_distance,
    rc.RatecodeID,
    rc.rate_code_name,
    f.store_and_fwd_flag,
    pl.pickup_latitude,
    pl.pickup_longitude,
    dl.dropoff_latitude,
    dl.dropoff_longitude,
    pt.payment_type,
    f.fare_amount,
    f.extra,
    f.mta_tax,
    f.tip_amount,
    f.tolls_amount,
    f.improvement_surcharge,
    f.total_amount
  FROM
    `project-uberdataanalytics.Uber_Transformed_Dataset.fact_table` f
    JOIN `project-uberdataanalytics.Uber_Transformed_Dataset.passenger_count_dim` p 
      ON f.passenger_count_id = p.passenger_count_id
    JOIN `project-uberdataanalytics.Uber_Transformed_Dataset.trip_distance_dim` td 
      ON f.trip_distance_id = td.trip_distance_id
    JOIN `project-uberdataanalytics.Uber_Transformed_Dataset.rate_code_dim` rc 
      ON f.rate_code_id = rc.rate_code_id
    JOIN `project-uberdataanalytics.Uber_Transformed_Dataset.pickup_location_dim` pl 
      ON f.pickup_location_id = pl.pickup_location_id
    JOIN `project-uberdataanalytics.Uber_Transformed_Dataset.dropoff_location_dim` dl 
      ON f.dropoff_location_id = dl.dropoff_location_id
    JOIN `project-uberdataanalytics.Uber_Transformed_Dataset.payment_type_dim` pt 
      ON f.payment_type_id = pt.payment_type_id
    JOIN `project-uberdataanalytics.Uber_Transformed_Dataset.datetime_dim` dt 
      ON f.datetime_id = dt.datetime_id
);
