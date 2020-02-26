CREATE OR REPLACE FUNCTION public.campaign_report(campaignid bigint, campaign_date text)
 RETURNS TABLE(campaign_id integer, name character varying, status character varying, cnt bigint)
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
--------------------------------------------------------------------------------------------------------
select * from campaign_report(0, '2020-02-24')

--------------------------------------------------------------------------------------------------------
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

----------------------------------------------------------------
select * from campaign_report_details(32)












------------------------------------------------------------------------------------------------------
SELECT * from campaign_report_details(32)