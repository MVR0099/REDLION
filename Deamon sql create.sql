
-- Country

create table county_hdr(GRP_id int,OU_ID int,bu_id int,cntry_code nvarchar(20),Activie_date datetime, active_inactive_flag int(1),
					Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

create table county_hdr(GRP_id int,OU_ID int,bu_id int,cntry_code nvarchar(20),lang_id int(3),cntry_short_desc nvarchar(80),cntry_long_desc nvarchar(200),
				
					Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

-- State

create table State_hdr(GRP_id int,OU_ID int,bu_id int,state_code nvarchar(20),Activie_date datetime, active_inactive_flag int(1),
					Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

create table state_hdr(GRP_id int,OU_ID int,bu_id int,State_code nvarchar(20),cntry_code nvarchar(20),lang_id int(3),state_short_desc nvarchar(80),state_long_desc nvarchar(200),
				
					Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

-- District

create table District_hdr(GRP_id int,OU_ID int,bu_id int,dist_code nvarchar(20),Activie_date datetime, active_inactive_flag int(1),
					Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

create table District_hdr(GRP_id int,OU_ID int,bu_id int,dist_code nvarchar(20),State_code nvarchar(20),cntry_code nvarchar(20),lang_id int(3),dist_short_desc nvarchar(80),dist_long_desc nvarchar(200),
				
					Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

-- Cources
create Table Cource(GRP_id int,OU_ID int,bu_id int,Course_ID nvarchar(20), C_short_description nvarchar(80), C_L_DESC  nvarchar(200),
					
					Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

-- Sem / Class

create table sem(GRP_id int,OU_ID int,bu_id int,sem_code nvarchar(20),sem_short_desc nvarchar(80),sem_long_desc nvarchar(200),
				
					Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )


/*#####################################################################################################################################################################################*/
/*########################################*/
/*######### Employee Basic Details #######*/
/*########################################*/


-- Employee basic details

create table EBD (GRP_id int,OU_ID int,bu_id int,emp_code nvarchar(20),Emp_name nvarchar(100),EMP_DOJ datetime,EGID nvarchar(15),EGIVF datetime,
					EGIVT datetime,
				
					Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

-- Employee Personal information

create table EPD (GRP_id int,OU_ID int,bu_id int,emp_code nvarchar(20),Emp_name nvarchar(100),EMP_DOJ datetime,EMP_DOB datetime,E_gen nvarchar(1)
					,E_nationality nvarchar(5),E_EMR_per nvarchar(20) ,E_EMR_per_con numeric(10) ,E_EMR_per_rel nvarchar(20),E_contact_num numeric(10),E_Email Nvarchar(100)
				
					,Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

-- Employee Assignment details

create table EAD (GRP_id int,OU_ID int,bu_id int,emp_code nvarchar(20),asgn_no int,e_pos_cd nvarchar(10),Grade_set_cd nvarchar(10),Grade_cd nvarchar(10), W_mob_num numeric(10)
					,Emp_w_email nvarchar(100)
					,Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

-- Employee Contact Details

create table ECD (GRP_id int,OU_ID int,bu_id int,emp_code nvarchar(20),Contact_Typr nvarchar(10),e_Addr_line nvarchar(500),e_Addr_line2 nvarchar(500),e_Addr_line3 nvarchar(500), 
					E_dist_cd nvarchar(5),E_state_cd nvarchar(5),E_cntry_cd nvarchar(5),Emp_landmark nvarchar(100)
					,Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )
-- 
/*################################################################################################################################################################################################################*/
/*#####################################*/
/*####### Employee Time Details #######*/
/*#####################################*/

-- Shift Details

create table Shift_Details_hdr (GRP_id int,OU_ID int,bu_id int,Shift_code nvarchar(10),effective_from datetime,Effective_to datetime,active_inactive int(1)
					,Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

create table Shift_Details_Lang_DTL (GRP_id int,OU_ID int,bu_id int,Shift_code nvarchar(10),Lang_id int,u_shift_sdesc nvarchar(80), shift_sdesc nvarchar(80) ,
					 u_shift_Ldesc nvarchar(200), shift_Ldesc nvarchar(200) ,effective_from datetime,Effective_to datetime,active_inactive int(1)
					,Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )
-- Holiday Details

create table Holiday_hdr (GRP_id int,OU_ID int,bu_id int,Holiday_code nvarchar(10),effective_from datetime,Effective_to datetime,active_inactive int(1)
					,Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

create table Holiday_Lang_DTL (GRP_id int,OU_ID int,bu_id int,holiday_code nvarchar(10),Lang_id int,u_holiday_sdesc nvarchar(80), holiday_sdesc nvarchar(80) ,
					 u_holiday_Ldesc nvarchar(200), holiday_Ldesc nvarchar(200),active_inactive int(1)
					,Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

Create Table Holiday_master (GRP_id int,OU_ID int,bu_id int,holiday_code nvarchar(10),Lang_id int,h_date datetime,h_description nvarchar(80),Hday_type nvarchar(10),hday_eve int(1),
					active_inactive int(1)
					,Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

--Employee Rotational Shift  Plan  #### Combination of Shift  and weekoff (s)

create table RotaP (GRP_id int,OU_ID int,bu_id int,RP_cd nvarchar(10),effective_from datetime,Effective_to datetime,active_inactive int(1)
					,Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )

create table RotaP_DTL (GRP_id int,OU_ID int,bu_id int,RP_code nvarchar(10),u_RP_sdesc nvarchar(80), RP_sdesc nvarchar(80) ,
					 u_RP_Ldesc nvarchar(200), RP_Ldesc nvarchar(200),active_inactive int(1),RP_WEOFF_start  nvarchar(20)
					,Created_by nvarchar(20),Created_date datetime,Modified_by nvarchar(20),Modified_by_date datetime )



--Employee Rotational Shift Schedule #### combination of Rotational shift Plan and Holidays 



--Employee Flexi shift  Plan
--Employee Flexi shift Rotational Schedule
--


--Employee Time Details




--Employee leave details


