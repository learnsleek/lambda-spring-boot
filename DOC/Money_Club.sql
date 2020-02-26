create or replace function getMemberDetail(entityType text, entityValue text)
returns table(memberId int8, firstName text, lastName text, email text, mobile int8, register_Date timestamptz )
as $getMemberDetail$
declare
begin
	 if(entityType is not null and  entityType = 'MEMBERID' and entityValue is not null ) then
	    RETURN QUERY select mcmemberid, mcfirstname, mclastname,mcemail, mcphonecontactnum ,
	   mcregistrationdate from mcmember where mcmemberid = entityValue::bigint ;
	 elseif(entityType is not null and  entityType = 'PHONE' and entityValue is not null ) then
	    RETURN QUERY select mcmemberid, mcfirstname, mclastname,mcemail, mcphonecontactnum ,
	   mcregistrationdate from mcmember where mcphonecontactnum = entityValue::bigint;
	 elseif(entityType is not null and  entityType = 'EMAIL' and entityValue is not null ) then
	    RETURN QUERY select mcmemberid, mcfirstname, mclastname,mcemail, mcphonecontactnum ,
	   mcregistrationdate from mcmember where mcemail = entityValue;
	 end if;
END;
$getMemberDetail$
LANGUAGE plpgsql;
------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------
create or replace function getMembersForClub(entityType text, entityValue text, status text)
returns table(clubId int8, clubName text, ownerMemberId int8, memberId int8)
as $getMembersForClub$
declare
begin
	 if(entityType is not null and  entityType = 'CLUBNAME' and entityValue is not null ) then
	    RETURN QUERY SELECT mcd.mcclubid, mcd.mcclubname, mcd.mcclubownerid, mcm.mcmemberid
	      FROM public.mcclubdetail mcd inner join public.mcclubmembers mcm
          on mcd.mcclubid = mcm.mcclubid where mcd.mcclubname = entityValue and mcd.mcstatus = status;
	 elseif(entityType is not null and  entityType = 'CLUBID' and entityValue is not null ) then
	    RETURN QUERY SELECT mcd.mcclubid, mcd.mcclubname, mcd.mcclubownerid, mcm.mcmemberid
	      FROM public.mcclubdetail mcd inner join public.mcclubmembers mcm
          on mcd.mcclubid = mcm.mcclubid where mcd.mcclubid = entityValue::bigint and mcd.mcstatus = status;
	 end if;
END;
$getMembersForClub$
LANGUAGE plpgsql;

------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------

create or replace function getMembersDetailsForClub(entityType text, entityValue text, status text)
returns table(clubId int8, clubName text, ownerMemberId int8, memberId int8,
firstName text, lastName text, email text, mobile int8, register_Date timestamptz)
as $getMembersForClub$
declare
begin
	 if(entityType is not null and  entityType = 'CLUBNAME_MEMBERDETAILS' and entityValue is not null ) then
	    RETURN QUERY SELECT  mcd.mcclubid, mcd.mcclubname, mcd.mcclubownerid, mcm.mcmemberid,
			mcmem.mcfirstname, mcmem.mclastname, mcmem.mcemail, mcmem.mcphonecontactnum,
			mcmem.mcregistrationdate FROM public.mcclubdetail mcd
			inner join public.mcclubmembers mcm
			on mcd.mcclubid = mcm.mcclubid
			inner join mcmember mcmem on mcm.mcmemberid = mcmem.mcmemberid
			where mcd.mcclubname = entityValue and mcd.mcstatus ='CREATED';
	elseif(entityType is not null and  entityType = 'CLUBID_MEMBERDETAILS' and entityValue is not null ) then
	    RETURN QUERY SELECT  mcd.mcclubid, mcd.mcclubname, mcd.mcclubownerid, mcm.mcmemberid,
			mcmem.mcfirstname, mcmem.mclastname, mcmem.mcemail, mcmem.mcphonecontactnum,
			mcmem.mcregistrationdate FROM public.mcclubdetail mcd
			inner join public.mcclubmembers mcm
			on mcd.mcclubid = mcm.mcclubid
			inner join mcmember mcmem on mcm.mcmemberid = mcmem.mcmemberid
			where mcd.mcclubid = entityValue::bigint and mcd.mcstatus ='CREATED';
	 end if;
END;
$getMembersForClub$
LANGUAGE plpgsql;
------------------------------------------------------------------------------------------
select * from getMemberDetail('MEMBERID', '814714725317082400');

select * from getMemberDetail('PHONE', '8147147253');

select * from getMemberDetail('EMAIL', 'chamundeshwarirani68@gmail.com');

select * from getMembersForClub('CLUBNAME','Pilot509','CREATED');

select * from getMembersForClub('CLUBID','1580392327849','CREATED');

select * from getMembersDetailsForClub('CLUBNAME_MEMBERDETAILS','Pilot509','CREATED');

select * from getMembersDetailsForClub('CLUBID_MEMBERDETAILS','1580392327849','CREATED');

select * from campaign_report(12, '2020-02-05 13:34:04')
