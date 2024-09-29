-- Start by deleting any tables if the exist already
-- We want to be able to re-run this script as needed.
-- DROP tables in reverse order of creation 
-- DROP dependent tables (with foreign keys) first

DROP TABLE IF EXISTS autoModel;
DROP TABLE IF EXISTS autoMaker;

-- Create the autoMaker table
-- Note that the autoMaker table has a foreign key to the autoModel table
-- This means that the autoModel table is dependent on the autoMaker table
-- Be sure to create the standalone autoMaker table BEFORE creating the autoModel table.

CREATE TABLE autoModel (
    model_ID TEXT PRIMARY KEY,
    model_name TEXT,
    model_type TEXT,
    model_years TEXT,
    maker_id TEXT,
    FOREIGN KEY (maker_id) REFERENCES autoMaker(maker_id)
);

-- Create the autoModel table 
-- Note that the autoModel table has no foreign keys, so it is a standalone table

CREATE TABLE autoMaker (
    maker_id TEXT PRIMARY KEY,
    origin TEXT,
    year_est INTEGER
);