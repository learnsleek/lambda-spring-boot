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
VALUES( now(), 'MOBILE', '9871838911', 'hi surajit  ', 0,'comment','Club1' ,2),
( now(), 'MOBILE', '9871702517', 'hi Manuraj ', 0,'comment','Club2',2),
( now(), 'MOBILE', '7836851533', 'hi whatsappaotomation ', 0,'comment','Club2',2);

-------------------------------------------------------------------


select * from mc_campaign;
select * from mc_campaign_details;
select * from mc_campaign_details where campaign_id =1 and status =0;
select * from mc_campaign_details where campaign_id = 1 and status =0




truncate table mc_campaign

SELECT id, creationdatetime, entitytype, entityvalue, message, status, "comments"
FROM public.mc_campaign;

select * from mc_campaign where  entitytype = 'MOBILE' and entityvalue = '9910773645';

update mc_campaign set status = ?, comments =? , message=? where id=?;

