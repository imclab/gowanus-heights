SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "gowanus-heights" (gid serial,
"id" numeric(10,0),
"woe_id" numeric(10,0),
"woe_parent" numeric(10,0),
"iso" varchar(80),
"woe_placet" varchar(80),
"woe_lang" varchar(80),
"name" varchar(80),
"artisinal_" numeric(10,0),
"artisina_1" varchar(80));
ALTER TABLE "gowanus-heights" ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('','gowanus-heights','geom','4326','MULTIPOLYGON',2);
INSERT INTO "gowanus-heights" ("id","woe_id","woe_parent","iso","woe_placet","woe_lang","name","artisinal_","artisina_1",geom) VALUES ('18807771','18807771','12589335','US','Suburb','ENG','Gowanus Heights','18807771','http://www.brooklynintegers.com/','0106000020E61000000100000001030000000100000008000000228D0A9C6C7F52C0728A8EE4F255444096404AECDA7F52C082C64CA25E5644404DBB9866BA7F52C0EB1F4432E4564440944E24986A7F52C05F605628D2574440CFBC1C76DF7E52C0D8F335CB65574440EAB0C22D1F7F52C0A96BED7DAA564440293E3E213B7F52C0C4060B2769564440228D0A9C6C7F52C0728A8EE4F2554440');
CREATE INDEX "gowanus-heights_geom_gist" ON "gowanus-heights" USING GIST ("geom");
COMMIT;
