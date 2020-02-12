create USER amit with password 'amit';
CREATE DATABASE campaign;

drop table if exists mc_status;
drop table if exists mc_campaign_details;
drop table if exists mc_campaign;


CREATE TABLE mc_status(
   id serial PRIMARY KEY,
   creationDateTime TIMESTAMP,
   name VARCHAR (50) ,
   comments  text
);

CREATE TABLE mc_campaign(
   id serial PRIMARY KEY,
   creationDateTime TIMESTAMP,
   name VARCHAR (500) ,
   type VARCHAR (50) ,
   comments  text
);

CREATE TABLE mc_campaign_details(
   id serial PRIMARY KEY,
   creationDateTime TIMESTAMP,
   sentDateTime TIMESTAMP,
   entityType VARCHAR (50) ,
   entityValue VARCHAR (50) ,
   message text,
   status INT ,
   comments  text,
   clubname VARCHAR (200),
   campaign_id integer references mc_campaign(id)
);

CREATE INDEX entity ON mc_campaign_details (STATUS, campaign_id);
-------------------------------------------------------------------------------------------
truncate table mc_status;
truncate table mc_campaign;
truncate table mc_campaign_details;


INSERT INTO public.mc_status
(ID, creationDateTime, name, comments )
VALUES(1, NOW(), 'GENERATED', 'GENERATED'),
(2, NOW(), 'SENT', 'SENT'),
(3, NOW(), 'FAILED', 'FAILED'),
(4, NOW(), 'ABANDONED', 'ABANDONED');



INSERT INTO public.mc_campaign
(creationdatetime, name, type, "comments")
VALUES( now(), 'WhatsApp Group Creation Request', 'WhatsApp', 'WhatsApp Group');

INSERT INTO public.mc_campaign_details
(creationdatetime, entitytype, entityvalue, message, status, "comments",clubname ,campaign_id)

-------------------------------------------------------------------
select * from mc_campaign;
select * from mc_campaign_details;
select * from mc_campaign_details where campaign_id =1 and status =0;
select count(*) from mc_campaign_details where campaign_id = 1 and status =0

select count(1) from mc_campaign_details

select * from mc_campaign_details

update mc_campaign_details set status = ?, comments =?, sentDateTime= now() where id=?

truncate table mc_campaign_details;

INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9953244992,0,'6k1d',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7400744601,0,'6k1d',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8433110947,0,'6k1d',2);


update mc_campaign_details set status = 0 where id=1110

------------------------------------------Final Database Config----------------------------------

--insert statement - campaign name
INSERT INTO public.mc_campaign
(creationdatetime, name, type, "comments")
VALUES( now(), '6k1d - 28 Jan 2020', 'WhatsApp', '6k1d - 28 Jan 2020 group creation');
INSERT INTO public.mc_campaign
(creationdatetime, name, type, "comments")
VALUES( now(), '8k3d - 28 Jan 2020', 'WhatsApp', '8k3d - 28 Jan 2020 group creation');
INSERT INTO public.mc_campaign
(creationdatetime, name, type, "comments")
VALUES( now(), '12k15d - 28 Jan 2020', 'WhatsApp', '12k15d - 28 Jan 2020 group creation');
INSERT INTO public.mc_campaign
(creationdatetime, name, type, "comments")
VALUES( now(), '15k15d - 28 Jan 2020', 'WhatsApp', '15k15d - 28 Jan 2020 group creation');
INSERT INTO public.mc_campaign
(creationdatetime, name, type, "comments")
VALUES( now(), '30k15d - 28 Jan 2020', 'WhatsApp', '30k15d - 28 Jan 2020 group creation');
--insert statment details (from Excel)    
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9994792084,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9916110019,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7760047497,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8527292497,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8688557015,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9448985881,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9331729017,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7092524158,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7022732708,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9886794193,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8220308922,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8072647669,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9538773449,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9535014372,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9816839248,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9483994426,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9618989411,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9845672722,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8754646194,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8308828471,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7875338158,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9677763259,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9886895222,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9341808090,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',6382961871,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9632314472,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7055970555,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9700858617,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9360291487,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9988755350,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8003484829,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7702211102,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9816430579,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9008992494,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7678546867,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9010369906,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9327192787,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9789031769,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8449969267,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9860049406,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9490289247,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9632906966,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8310234675,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9995159253,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8447814719,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9318984080,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9597117179,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8827616763,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',6305696218,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8888876520,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7995992263,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9717498424,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7013819888,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8220145167,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9640123693,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9642626634,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7382759899,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7387903733,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9762438647,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9287879999,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9994517843,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9364645556,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7569694790,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8886455522,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9950884791,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9677701104,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9025734975,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9723428769,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7307511976,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9066611181,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9353000461,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9972254542,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9741918105,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9912199835,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8106989019,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8861592110,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8297750806,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9082220002,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8468874778,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9736434545,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7049408902,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8295348666,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7702399958,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8851200915,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8871686029,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7709319400,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8050056060,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7799778844,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8269584237,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8919226484,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9989200772,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9550755142,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9131725779,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9916599494,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9177133192,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9059395559,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9000984999,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9731006418,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9041924190,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9030987558,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9966344459,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9998798981,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7276757992,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8106307787,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7338446440,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9989343232,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9133444564,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9789628387,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9160121526,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9786684522,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9381077767,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9702316560,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9611105789,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9953192000,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9777457040,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9848495220,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9730305656,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9030141122,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9323304636,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9493999509,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9642947047,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8726646668,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9703257688,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9806208339,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8588868348,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9642514017,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9176660812,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7000142517,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9803741675,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9000014389,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9880395000,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8143806177,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9490327350,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9167270471,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8329659995,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8626006030,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9696631189,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8553111582,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9047782003,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9071566566,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9035380089,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9787127728,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9158640471,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9603637445,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7044037121,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9638955149,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8130323237,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9618405363,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9032399111,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8864969417,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9677288798,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7809364984,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9996196665,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8096444946,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8428727393,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7307741919,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9880725783,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9312837456,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9911838866,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9885767955,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9966319546,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9899051088,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9810598222,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9997397879,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7904162471,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9677608879,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9629806283,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9742396794,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7259110211,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7795492003,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9966256955,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7815011242,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9486000669,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9591085305,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9352240851,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9899767008,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9242146124,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8460827890,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8496977773,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8012342929,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9488331230,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9926354672,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7405981459,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9448600730,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8971676651,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7986168653,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9740277644,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9081922222,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9440437558,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9014040347,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9582522926,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9008330000,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9790904586,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9218586445,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9456101634,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7018915007,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9490814167,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9894921155,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9849708880,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9765552266,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9985854562,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9826698920,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9673528721,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9492014541,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9953837637,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9987739533,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9550598708,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9937200899,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9939524517,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9923554477,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8010355659,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9886126012,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9008002183,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9399988874,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9990089288,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9600091115,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8742907222,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8867340723,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9451614786,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9438787079,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9754331323,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8892309639,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9941016353,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7013604598,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9448771848,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9995889643,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7891882002,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9550091333,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9923602535,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8257020570,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8866305185,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7892835247,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9773917418,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8605623309,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8802772414,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9490956648,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9893406647,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9748106648,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9346540863,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9337363318,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8130054243,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7738228404,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9915706119,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9599236887,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9148910882,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7204104723,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8939611228,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9966663246,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8675441253,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8639831132,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9830951041,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9886795735,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9597974329,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8019306772,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8015380953,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8089639470,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9964700173,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8660501168,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9711007528,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9967779925,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7402132838,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9160049179,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8105911587,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8123330590,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9686351779,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9509704484,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9491188870,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9916422067,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9455732336,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8892656538,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9449649534,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9599412616,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9654245953,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9953944514,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9769037152,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9985886883,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9650354744,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7828216164,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9999334228,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9990540077,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9949993124,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8826453038,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9844256248,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8800511494,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9886396583,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9691432169,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9843376646,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7075760485,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7021684825,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8880005614,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9892820009,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9700008066,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8000719728,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9789838234,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9164073677,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9868439159,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7781051213,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9971996200,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9876144611,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9985049010,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9966695336,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9866085768,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9600300484,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8360322673,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9643351095,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9990677757,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8143133240,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9561139797,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9491376277,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7898287673,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9642226609,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9030105227,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9900570158,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9741155279,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7898441864,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8093601056,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8977987788,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8010054746,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8860864045,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9338486979,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9453271178,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9986000741,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9954999271,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8437046011,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9018851737,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7738135446,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9880898663,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8884914288,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9730465323,0,'6k1d - 28 Jan 2020',1);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8904099902,0,'6k1d - 28 Jan 2020',1);


--Update statement (update message in mc_campaign_details)
update public.mc_campaign_details set message ='CLUB INVITATION

Hi

We are going to start our next club within 2 days.


Club Details

Contribution = Rs.600 per member 

Frequency = Daily

Total members = 10

Bid duration = 15 mins

Club amount = Rs.6000


10 slots are available and invitations are going out to a select group of experienced and verified money clubbers.


If you are interested in joining this club, please reply YES and we will let you know within 48 hours if your slot gets confirmed.


(2801206k1d)' where campaign_id=1
--count statement
select count(*) from mc_campaign_details;

select * from mc_campaign_details where  campaign_id=1;

------------------------------------------Final Database Config----------------------------------
select count(*) from mc_campaign_details where campaign_id=2 and status =0;
select * from mc_campaign_details where  campaign_id=2;

select distinct "comments" from mc_campaign_details where campaign_id=2 and status =0;


INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9030109455,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9831511851,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8448541252,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9036500001,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8754947919,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8892984669,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9900038740,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9478520671,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8801025757,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9816620018,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8438224684,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9791008982,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8328164569,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9809419770,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',6379598409,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7075431542,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9953659666,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9672039097,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8854040102,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8125597091,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9439280390,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9700522733,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9787572617,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9030868503,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9160688324,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9902957733,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8553289172,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9019155886,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9743508047,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9159575169,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9704303101,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8147809816,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7306626555,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9597324135,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7907652573,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9742323230,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7892960778,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9880176669,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9703006757,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8660984959,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8617742962,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9515416327,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9962687086,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9904666624,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8340790012,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9902154987,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8247045225,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8660045723,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9711130483,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9902056571,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7668432150,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9986747252,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8050030006,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9906335457,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8885566888,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9986236833,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8485029703,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9495836385,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8886958877,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9970342089,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7976080624,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9711004246,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9773284334,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9246414650,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9035553855,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8123109078,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9739198989,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9886337363,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8446363804,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9741047842,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9500236669,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8748896669,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9840545762,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9731727272,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8792307466,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8099502270,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9620532218,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8106758173,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8123462012,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9407162915,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7829074330,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9985848585,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9474827955,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8247796230,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7578062735,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9000659398,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9000053437,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8891625700,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9971422091,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7010703841,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7972963120,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9926575656,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8708380692,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9008007164,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9906883240,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8008823433,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9066035742,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9789675388,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9739299607,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8075884961,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9766160259,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9814209661,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9841202148,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9972023932,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9654056140,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9926070007,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7022428011,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9438310387,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9448360719,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8557059406,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9890506873,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9550802278,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9066612779,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8136855599,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7675024030,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9703116257,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8527476274,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9717138901,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9096611970,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9176662877,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8236847878,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7799988827,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9741391203,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9599446636,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9999245887,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8747999800,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8894468801,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9980676339,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8137046273,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8686822816,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7876767634,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8985879239,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7021688615,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9644296441,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9136287363,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9989553003,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9985002567,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7278888821,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8130085709,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9087205551,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7395846999,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9067067947,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8106812557,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9740691376,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9886671001,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7510616777,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9629775372,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9822528053,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9008095745,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9449139138,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8123020323,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9970076258,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9811221615,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9958353376,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8146023161,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9441664410,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9416481310,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8870707106,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8357036639,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8754047932,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9492854371,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9439081898,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9450907091,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9619111069,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9665099843,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8867382604,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7503745933,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8655333753,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8668391262,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9629148454,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7032367592,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9990461591,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7893545565,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7760344816,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9052908111,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9803922282,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9894642312,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9013614481,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9953441564,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9035222325,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9791284326,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9059430404,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9731999162,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9958937862,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8179788066,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9871088088,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8939694164,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9206745256,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8149047488,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7358639799,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9966885973,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9716776454,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8878165334,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9325699668,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9359593009,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9900146042,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9530146847,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9032330225,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9781568649,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9422008133,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8826489204,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7981676908,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7903084844,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9893606791,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9491779177,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9599336493,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8140995299,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9444604425,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9882767239,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9731465334,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9718932967,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9573452416,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9916230749,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7999376971,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8870377927,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8623906122,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9910937505,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8142046424,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9579710063,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9270782500,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8556961093,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9403829674,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9533553393,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9000722674,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9480663357,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8285842155,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9817075087,0,'8k3d - 28 Jan 2020',2);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9015948054,0,'8k3d - 28 Jan 2020',2);


--Update statement (update message in mc_campaign_details)
update public.mc_campaign_details set message ='CLUB INVITATION

Hi

We are going to start our next club within 2 days.


Club Details

Contribution = Rs.800 per member 

Frequency = 3 days

Total members = 10

Bid duration = 15 mins

Club amount = Rs.8000


10 slots are available and invitations are going out to a select group of experienced and verified money clubbers.


If you are interested in joining this club, please reply YES and we will let you know within 48 hours if your slot gets confirmed.


(2801208k3d)' where campaign_id=2


-----------------------------------------------------------------------------------------------------
select count(*) from mc_campaign_details where campaign_id=3 and status=0;
select * from mc_campaign_details where  campaign_id=3;

INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9986343955,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7780408452,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9769384810,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9704255525,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7382976929,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9916245734,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9990509222,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8762223101,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8106570484,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8012718919,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9866094541,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9677777684,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9751551234,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9677285144,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8074808795,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7448221429,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9900777556,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8973346172,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9390010500,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9975092995,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8951592113,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8123829659,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9986266292,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9611579565,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9677841459,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9705807060,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9787771197,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8197122178,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9816442098,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9844668796,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9884251450,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7400081856,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7090774670,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8892963820,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8698340766,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9731380303,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9052859394,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9993433894,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9164660344,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7403123400,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9560570185,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9566839917,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9045999815,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9900011715,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7353733242,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9945640318,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9566472679,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9842653202,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7847091809,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9739002825,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9791444816,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9765897103,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8686158680,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9071339448,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9968288888,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9642827555,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9986311400,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9994447821,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9108262364,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9988352346,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9944222829,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9246635454,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9560910500,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9047302040,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7674986421,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9391919296,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9000631791,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8185927056,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9553966208,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9012177785,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9108917989,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9738432691,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7795147555,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9030109032,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9954515157,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7015649362,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9999404736,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9900534534,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9902922244,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9848105657,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8874273666,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7877467666,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9310649645,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9292000006,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9177316663,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9540673453,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9308029001,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9840616531,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9990105188,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9967297561,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9611166355,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7337379999,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9810631063,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9000451331,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8150864499,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7665590454,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9945403223,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9995361657,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9741144766,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8075801087,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9910201591,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9884385679,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9611977654,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9895281166,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9980173987,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9375333339,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9035134878,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',6390499129,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8800112662,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9712961775,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9731682207,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9899100444,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9989943129,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9414540776,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7702727929,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8439122448,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9819101324,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9944258608,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8506901615,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9343725129,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9723393760,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',6267463567,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9758414051,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9553056667,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9899273103,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9408528689,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9986538792,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9397044418,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8147815170,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9033442990,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9769213965,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9707863862,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9911911166,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7021292749,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9987859242,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9845447347,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7674974612,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9849605670,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8485920378,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8007416208,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8179320979,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9773441226,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9902766330,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9538164030,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9966366631,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9663453206,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9815495550,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7893232346,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7032825567,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8985256391,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9743088969,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9962064786,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8804999057,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9798856412,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7798023010,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9966980112,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9820280850,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9778236897,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7905494286,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8826078976,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8105542983,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7774979124,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8147262787,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9708663075,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7730925927,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8553834313,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9845902356,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9911344637,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9816096390,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9148599225,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8527805936,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9820204429,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9676464075,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9008881598,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9999683943,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9810113092,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9566814258,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7002614848,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8329566948,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7014466763,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7890121273,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8606858885,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9366282151,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8439802484,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8885388674,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7901257133,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8693022000,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8368628257,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8888845024,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9652387715,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8125670995,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9299957957,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8553524025,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9810209970,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7000808787,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9773549508,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9632807575,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9911177244,0,'12k15d - 28 Jan 2020',3);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7204921929,0,'12k15d - 28 Jan 2020',3);

--Update statement (update message in mc_campaign_details)
update public.mc_campaign_details set message ='CLUB INVITATION

Hi

We are going to start our next club within 2 days.


Club Details

Contribution = Rs.1000 per member 

Frequency = fortnightly

Total members = 12

Bid duration = 15 mins

Club amount = Rs.12000


12 slots are available and invitations are going out to a select group of experienced and verified money clubbers.


If you are interested in joining this club, please reply YES and we will let you know within 48 hours if your slot gets confirmed.


(28012012k15d)' where campaign_id=3
---------------------------------------------------------------------------------------------

select count(*) from mc_campaign_details where campaign_id=4;
select count(*) from mc_campaign_details where campaign_id=4 and status =0;
select * from mc_campaign_details where  campaign_id=4;

INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7032302777,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7353880691,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7259653767,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9346766600,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8910034769,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8813027801,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8585010195,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9849998807,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9092105500,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9773308764,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7738228710,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7893667728,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9940474044,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7859818182,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9492179396,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8801256789,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9940141505,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9999697529,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8951785063,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9873084118,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8878494788,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9742852452,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9940253443,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8971705535,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9849793973,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9743506728,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9626892789,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9953769479,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8885607090,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9900489345,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7011267161,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8185933659,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9994910115,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7840010688,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9626234511,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9626234511,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9972380726,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9901738335,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9820232655,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9620540125,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9424140948,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9007713264,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7838217630,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9899899596,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9966264607,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9703547758,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8126576026,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9090009207,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8179988521,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9643162968,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9701542124,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7760903297,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9886270335,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9961922526,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9611363396,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7093466999,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8800189458,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7845730442,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9700414115,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9869742622,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9063362888,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8509748574,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9972420426,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9891345383,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9886888051,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9910010797,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9626234511,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9205177362,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7395933730,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9990004165,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9739522544,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8655096999,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9642474844,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9915297530,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8826949351,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9911177900,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9100934630,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8929558144,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9891891225,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9034283948,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7702274981,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9927650635,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9440118598,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9886580649,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9997058427,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9591836630,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9840810713,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9866203560,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9920444832,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9177206579,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8891018994,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9820508983,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9964203164,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8447294967,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8878279407,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8608804770,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8898515988,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9726645793,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9852902707,0,'15k15d - 28 Jan 2020',4);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7699705839,0,'15k15d - 28 Jan 2020',4);



--Update statement (update message in mc_campaign_details)
update public.mc_campaign_details set message ='CLUB INVITATION

Hi

We are going to start our next club within 2 days.


Club Details

Contribution = Rs.1500 per member 

Frequency = Fortnightly

Total members = 10

Bid duration = 15 mins

Club amount = Rs.15000


10 slots are available and invitations are going out to a select group of experienced and verified money clubbers.


If you are interested in joining this club, please reply YES and we will let you know within 48 hours if your slot gets confirmed.


(28012015k15d)' where campaign_id=4

------------------------------------------------------------------------------------------

select count(*) from mc_campaign_details where campaign_id=5;
select count(*) from mc_campaign_details where campaign_id=5 and status=0

select * from mc_campaign_details where  campaign_id=5;
select entityvalue,comments  from mc_campaign_details where  campaign_id=5;


INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8328492820,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9035788407,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9899158800,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9790688889,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9500449865,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8792883100,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9600932163,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9686039927,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7795538729,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9035321530,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8892984669,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7986456671,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9940428514,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8105933344,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8939286276,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9948660666,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9491920129,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9999962114,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9040229815,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9205573437,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9443284106,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9500047970,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9833268435,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7249222227,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9663136090,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7904698109,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9900925600,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9855100012,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7400744601,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9087330969,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9944355854,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8527943522,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9634515805,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9717246059,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9176893341,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8800434439,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9463751863,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9047077769,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9830227135,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8801009880,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9612757210,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9971429800,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9538512211,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9163333416,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8056054465,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9513657390,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9911883588,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9869799542,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9891997656,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',8686379170,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9891344175,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9892391231,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9033881965,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',7588556444,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9971846461,0,'30k15d - 28 Jan 2020',5);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9966856681,0,'30k15d - 28 Jan 2020',5);


--Update statement (update message in mc_campaign_details)
update public.mc_campaign_details set message ='CLUB INVITATION

Hi

We are going to start our next club within 2 days.


Club Details

Contribution = Rs.3000 per member 

Frequency = Fortnightly

Total members = 10

Bid duration = 15 mins

Club amount = Rs.30000


10 slots are available and invitations are going out to a select group of experienced and verified money clubbers.


If you are interested in joining this club, please reply YES and we will let you know within 48 hours if your slot gets confirmed.


(28012030k15d)' where campaign_id=5




select id, entityvalue,campaign_id, status, "comments" from mc_campaign_details

select min(sentdatetime), max(sentdatetime) from mc_campaign_details where campaign_id =1
select min(sentdatetime), max(sentdatetime) from mc_campaign_details where campaign_id =2
select min(sentdatetime), max(sentdatetime) from mc_campaign_details where campaign_id =3
select min(sentdatetime), max(sentdatetime) from mc_campaign_details where campaign_id =4
select min(sentdatetime), max(sentdatetime) from mc_campaign_details where campaign_id =5
2020-01-28 13:23:01
2020-01-28 12:11:22

