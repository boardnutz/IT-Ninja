#! /usr/bin/ruby

require 'dbi'

database = 'itNinja'
dbHost = 'localhost'
dbType = 'Mysql'
dbPass = 'changeme'
dbUser = 'itNinja'

DBI.connect('DBI:dbType:database' , 'dbiUser', 'dbPass') do | dbh | 
	dbh.do('CREATE TABLE computers(serial,make,model,purchasedate,price,useruid,cpu,memory,disk,location,supportcontact,osuid,printers):')
	dbh.do('CREATE TABLE software(uid,vendor,developer,name,version,serial,pdate,price,count,users,supportcontact,os_uid):')
	dbh.do('CREATE TABLE vendors(uid,name,webaddress,address,phone_number,contact_uid):')
	dbh.do('CREATE TABLE os(uid,name,developer,version):')
	dbh.do('CREATE TABLE tickets(ticket_id,reporter,assigned_to,comments,date,due,priority,relies_on,status):')
	dbh.do('CREATE TABLE status(id,status):')
	dbj.do('CREATE TABLE people(uid,email,first_name,last_name,phone,mobile,manager,start_date,end_date,home_email,instant_messanger,facebook,twitter,yammer,birthday,ssn,fax,password):')
end



