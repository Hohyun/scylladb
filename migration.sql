
CREATE KEYSPACE Chunkeng
WITH replication = {'class': 'NetworkTopologyStrategy', 'replication_factor' : 3};

use Chunkeng;

CREATE TYPE chunkbook (
    category text,
    title text,
    description text
)

CREATE TABLE IF NOT EXISTS homework (
    team_id text,
    study_date date,
    subject text,
    hw_due_date date,
    hw_items map<text, text>,
    hw_dic list<text>,
    hw_spk list<text>,
    hw_etc text,
    textbook list<frozen<chunkbook>>,
    unit list<frozen<chunkbook>>,
    PRIMARY KEY (team_id, study_date, subject)
) WITH CLUSTERING ORDER BY (study_date DESC, subject ASC);


insert into homework (
       team_id, study_date, subject, hw_due_date,
       hw_items,
       hw_dic, hw_spk, hw_etc,
       textbook, unit)
    values (
       '049008', '2024-08-16', 'Reading 1', '2024-08-21',
       { '단어' : '9과(1-6)', '책풀기' : '8과', '직독직해' : '8과',
         '직독틀문|1쓰1해' : '6과(2x2)', '듣따싸' : '9과 x5 듣고 따라 말하고 엄마 싸인 받아오기',
         '틀린단어쓰기|3쓰3해' : '틀단 3x3' },
       [''], [''], 'KA12 듣고 따라 말하고 엄마 싸인받기',
       [{ category : 'S78559560447', title : 'Bricks Reading 100-③', description : '' }],
       [{ category : 'S91797085751', title : 'Bricks Reading 100-③_Unit 14', description : '14과' }]);
   
insert into homework (
       team_id, study_date, subject, hw_due_date,
       hw_items,
       hw_dic, hw_spk, hw_etc,
       textbook, unit)
    values (
       '049008', '2024-08-14', 'Reading 1', '2024-08-16',
       { '단어' : '8과(1-6)', '책풀기' : '7과', '직독직해' : '7과',
         '직독틀문|1쓰1해' : '5과(2x2)', '듣따싸' : '8과 x5 듣고 따라 말하고 엄마 싸인 받아오기',
         '틀린단어쓰기|3쓰3해' : '틀단 3x3' },
       [''], [''], 'KA12 듣고 따라 말하고 엄마 싸인받기',
       [{ category : 'S56758866352', title : 'Bricks Reading 100-②', description : '' }],
       [{ category : 'S54979881135', title : 'Bricks Reading 100-②_Unit 08', description: '8과' }]);


insert into homework (
       team_id, study_date, subject, hw_due_date,
       hw_items,
       hw_dic, hw_spk, hw_etc,
       textbook, unit)
    values (
       '049008', '2024-08-12', 'Listening', '2024-08-19',
       { '단어' : '5과', '책풀기' : '', '듣따싸' : '5과 x 2',
         '틀린단어쓰기|3쓰3해' : '1-4과' },
       [''], [''], 'KA12 매일 듣고 싸인받기',
       [{ category : 'S42371131332', title : 'Listening Seed 1 Test 1', description : ''  }],
       [{ category : 'S21321876467', title : 'Listening Seed 1 Test 1', description : 'Test 1' }]);


insert into homework (
       team_id, study_date, subject, hw_due_date,
       hw_items,
       hw_dic, hw_spk, hw_etc,
       textbook, unit)
    values (
       '049008', '2024-07-29', 'Listening', '2024-08-05',
       { '단어' : '4과(1-6)', '책풀기' : '4과', '듣따싸' : '4과 x 5',
         '틀린단어쓰기|3쓰3해' : '3과' },
       [''], [''], 'KA12 매일 듣고 싸인받기',
       [{ category : 'S42317894385', title : 'Listening Seed 1 Unit-09', description : '' }],
       [{ category : 'S23187233888', title : 'Listening Seed 1 9-3', description : '3과' }]);
