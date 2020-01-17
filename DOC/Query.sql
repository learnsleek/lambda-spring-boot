create USER amit with password 'amit';
CREATE DATABASE campaign;

drop table if exists mc_campaign;
drop table if exists mc_campaign_details;

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
   status VARCHAR (50) ,
   comments  text,
   clubname VARCHAR (200),
   campaign_id integer references mc_campaign(id)
);

CREATE INDEX entity ON mc_campaign_details (entityType, entityValue);
-------------------------------------------------------------------------------------------
truncate table mc_campaign;
truncate table mc_campaign_details;

INSERT INTO public.mc_campaign
(creationdatetime, name, type, "comments")
VALUES( now(), 'WhatsApp Group Creation Request', 'WhatsApp', 'WhatsApp Group');

INSERT INTO public.mc_campaign_details
(creationdatetime, entitytype, entityvalue, message, status, "comments",clubname ,campaign_id)
VALUES( now(), 'MOBILE', '9871838911', 'hi surajit  ', 'TO_SEND','comment','Club1' ,1),
( now(), 'MOBILE', '9871702517', 'hi Manuraj ', 'TO_SEND','comment','Club2',1);

-------------------------------------------------------------------


select * from mc_campaign;
select * from mc_campaign_details;
select * from mc_campaign_details where campaign_id =1 and status = 'TO_SEND';
select * from mc_campaign_details where campaign_id = 1 and status = 'TO_SEND'




truncate table mc_campaign

SELECT id, creationdatetime, entitytype, entityvalue, message, status, "comments"
FROM public.mc_campaign;

select * from mc_campaign where  entitytype = 'MOBILE' and entityvalue = '9910773645';

update mc_campaign set status = ?, comments =? , message=? where id=?;

