-- Part One - Medical Center 

Create Database medical_db;

Create Table doctors (
    id Serial Primary Key,
    first_name VarChar(20) Not Null,
    last_name VarChar(20) Not Null,
    date_of_birth Date Not Null, 
    license_number Int Not Null
)


Create Table patients (
    id Serial Primary Key, 
    first_name VarChar(20) Not Null, 
    last_name VarChar(20) Not Null, 
    date_of_visit Date Not Null, 
    date_of_birth Date Not Null
)

Create Table doctors_patients (
    id Serial Primary Key, 
    doctor_id Int Not Null References doctors, 
    patient_id Int Not Null References patients
)

Create Table diagnosis (
    id Serial Primary Key, 
    name_of_diseas Text Not Null, 
    patient_id Int Not Null References patients On Delete Cascade
)

-- Part Two

Create Database craiglist_db;

Create Table regions (
    id Serial Primary Key, 
    city Text Not Null, 
    state_of_city Text Not Null,
)

Create Table users (
    id Serial Primary Key, 
    username VarChar(25) Not null, 
    first_name VarChar(20) Not Null, 
    last_name VarChar(20) Not Null, 
    password_phrase Varchar(30) Not Null, 
    preferred_region Int References regions
)

Create Table posts (
    id Serial Primary Key, 
    post_title Text Default 'No Title', 
    post_text Text Not Null, 
    user_id Int Not Null References users, 
    region_id Int Not Null References regions, 
)

Create Table categories (
    id Serial Primary Key, 
    cat_name Text Not Null
)

Create Table post_categ (
    id Serial Primary Key, 
    categ_id Int Not Null References categories, 
    post_id Int Not Null References posts
)


-- Part Three 

Create Database soccer; 

Create Table teams (
    id Serial Primary Key, 
    team_name Text Not Null
)

Create Table players (
    id Serial Primary Key, 
    player_name Varchar(25) Not Null, 
    birthday Date, 
    team_id Int Not Null References teams
)

Create table goals (
    id Serial Primary Key, 
    player_id Int Not Null References players, 
    match_id Int Not Null References matches
)

Create Table matches (
    id Serial Primary Key, 
    home_team Int Not Null References teams, 
    away_team Int Not Null References teams, 
    game_date Date Not Null, 
    home_field Text Not Null
    ref_id Int Not Null References referees
    season_id Int Not Null References seasons
)

Create Table referees (
    id Serial Primary Key, 
    ref_name Varchar(25) Not Null, 
)

Create Table seasons (
    id Serial Primary Key, 
    start_date Date Not Null, 
    end_date Date Not Null
)
