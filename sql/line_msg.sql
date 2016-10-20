-- message,1476377593747,room,,,R62bd781b71ebfa88c436e40ec358c264,text,5053531144851,Ted,,,,,
-- type,timestamp,source_type,groupId,userId,roomId,message_type,type,message_id,text,title,address,latitude,longitude
drop table line_msg;
create table line_msg(
  line_msg_id bigserial,
  type text,
  msg_t timestamp,
  source_type varchar,
  source_id varchar,
  message_type varchar,
  message_text varchar,
  message_id varchar,
  message json 
);
create index line_bot_t on line_msg(msg_t);