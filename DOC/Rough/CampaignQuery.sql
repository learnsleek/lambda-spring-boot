update mc_campaign_details set status =0, "comments" = '' where id =2834

select * from mc_campaign_details where id =2834


INSERT INTO public.mc_campaign
(creationdatetime, name, type, "comments")
VALUES( now(), 'Test -13Feb2020', 'WhatsApp', 'Test -13Feb2020 group creation');

INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9971470203,0,'Test -13Feb2020',21);
INSERT INTO public.mc_campaign_details(creationdatetime, entitytype, entityvalue, status,clubname ,campaign_id) values(now(),'MOBILE',9871702517,0,'Test -13Feb2020',21);

update public.mc_campaign_details set message =' TEst Invitation

Hi

We are going to start our next club within 2 days.


Club Details

Contribution = Rs.2000 per member 

Frequency = Fortnightly

Total members = 10

Bid duration = 15 mins

Club amount = Rs.20000


10 slots are available and invitations are going out to a select group of experienced and verified money clubbers.


If you are interested in joining this club, please reply YES and we will let you know within 48 hours if your slot gets confirmed.


(05022020k15d)' where campaign_id=21


select * from mc_campaign 
select * from campaign_report(12, '2020-02-05')

select mcd.campaign_id, mc."name", ms.name, 
		         count(1) from mc_campaign mc 
			  inner join mc_campaign_details mcd on mc.id = mcd.campaign_id 
			  inner join mc_status ms on ms.id = mcd.status  
			  where date(mc.creationdatetime) = '2020-01-28'
			  and mcd.campaign_id = 2
			  group by mcd.campaign_id, mc."name", ms.name;


CREATE OR REPLACE FUNCTION public.campaign_report(campaignid bigint)
 RETURNS TABLE(campaign_id int4, name character varying, status character varying, cnt bigint)
 LANGUAGE plpgsql
AS $function$
declare
begin 
	 if(campaignid is not null and campaignid > 0) then
	    RETURN QUERY select mcd.campaign_id, mc."name", ms.name, 
		         count(1) from mc_campaign mc 
			  inner join mc_campaign_details mcd on mc.id = mcd.campaign_id 
			  inner join mc_status ms on ms.id = mcd.status  
			  where date(mc.creationdatetime) = date('2020-02-05')
			  and mcd.campaign_id = campaignid ::bigint
			  group by mcd.campaign_id, mc."name", ms.name;
	 end if;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.campaign_report(campaignid bigint)
 RETURNS TABLE(campaign_id int4, name character varying, status character varying, cnt bigint)
 LANGUAGE plpgsql
AS $function$
declare
begin 
	 if(campaignid is not null and campaignid > 0) then
	    RETURN QUERY select mcd.campaign_id, mc."name", ms.name, 
		         count(1) from mc_campaign mc 
			  inner join mc_campaign_details mcd on mc.id = mcd.campaign_id 
			  inner join mc_status ms on ms.id = mcd.status  
			  where date(mc.creationdatetime) = date('2020-02-05')
			  and mcd.campaign_id = campaignid ::bigint
			  group by mcd.campaign_id, mc."name", ms.name;
	 end if;
END;
$function$
;

select * from mc_campaign mc 
select * from campaign_report(3, '2020-01-28');

CREATE OR REPLACE FUNCTION public.campaign_report(campaignid bigint, campaign_date text)
 RETURNS TABLE(campaign_id int4, name character varying, status character varying, cnt bigint)
 LANGUAGE plpgsql
AS $function$
declare
begin 
	 if(campaignid is not null and campaignid > 0) then
	    RETURN QUERY select mcd.campaign_id, mc."name", ms.name, 
		         count(1) from mc_campaign mc 
			  inner join mc_campaign_details mcd on mc.id = mcd.campaign_id 
			  inner join mc_status ms on ms.id = mcd.status  
			  where date(mc.creationdatetime) = campaign_date ::date
			  and mcd.campaign_id = campaignid ::bigint
			  group by mcd.campaign_id, mc."name", ms.name;
	 elseif(campaignid is not null and campaignid = 0) then
	    RETURN QUERY select mcd.campaign_id, mc."name", ms.name, 
		         count(1) from mc_campaign mc 
			  inner join mc_campaign_details mcd on mc.id = mcd.campaign_id 
			  inner join mc_status ms on ms.id = mcd.status
			  where date(mc.creationdatetime) = campaign_date ::date
			  group by mcd.campaign_id, mc."name", ms.name;
	 end if;
END;
$function$
;

select * from campaign_report_details(12);

CREATE OR REPLACE FUNCTION public.campaign_report_details(campaignid bigint)
 RETURNS TABLE(campaign_name varchar(500), creationtime timestamp without time zone, 
 senttime timestamp without time zone, entitytyp character varying, 
 entityvalu character varying, stat character varying, comment text, clubnam character varying)
 LANGUAGE plpgsql
AS $function$
declare
begin 
	 if(campaignid is not null and campaignid > 0) then
	    RETURN QUERY SELECT mc.name, mcd.creationdatetime, mcd.sentdatetime, mcd.entitytype, 
	    mcd.entityvalue, ms.name, mcd."comments", mcd.clubname
		FROM public.mc_campaign_details mcd inner join public.mc_status ms
		on mcd.status = ms.id
		inner join mc_campaign mc  on mc.id = mcd.campaign_id
	    where mcd.campaign_id =campaignid::bigint;

	 end if;
END;
$function$
;

