-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS companies; 
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS industries;

-- CREATE TABLES

CREATE TABLE contacts (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    company_id INTEGER
);

CREATE TABLE companies (
    id iNTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE salespeople (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    notes TEXT,
    created_at TEXT,
    salesperson_id INTEGER,
    contact_id INTEGER
);

CREATE TABLE industries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE industry_memberships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    industry_id INTEGER
);