INSERT INTO INFORMATION_SCHEMA.CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, UNIQUE_INDEX_NAME, CHECK_EXPRESSION, COLUMN_LIST, REMARKS, SQL, ID) VALUES ('DEFAULT', 'PUBLIC', 'CONSTRAINT_D63', 'REFERENTIAL', 'DEFAULT', 'PUBLIC', 'JOURNAL', 'CONSTRAINT_INDEX_23', null, 'MARK_ID', '', 'ALTER TABLE "PUBLIC"."JOURNAL" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_D63" FOREIGN KEY("MARK_ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_D63" REFERENCES "PUBLIC"."MARK"("ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_23" NOCHECK', 27);
INSERT INTO INFORMATION_SCHEMA.CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, UNIQUE_INDEX_NAME, CHECK_EXPRESSION, COLUMN_LIST, REMARKS, SQL, ID) VALUES ('DEFAULT', 'PUBLIC', 'CONSTRAINT_B', 'REFERENTIAL', 'DEFAULT', 'PUBLIC', 'STUDENT', 'CONSTRAINT_INDEX_4', null, 'STUDY_GROUP_ID', '', 'ALTER TABLE "PUBLIC"."STUDENT" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_B" FOREIGN KEY("STUDY_GROUP_ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_B" REFERENCES "PUBLIC"."STUDY_GROUP"("ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_4" NOCHECK', 7);
INSERT INTO INFORMATION_SCHEMA.CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, UNIQUE_INDEX_NAME, CHECK_EXPRESSION, COLUMN_LIST, REMARKS, SQL, ID) VALUES ('DEFAULT', 'PUBLIC', 'CONSTRAINT_2', 'REFERENTIAL', 'DEFAULT', 'PUBLIC', 'STUDY_PLAN', 'CONSTRAINT_INDEX_BB', null, 'SUBJECT_ID', '', 'ALTER TABLE "PUBLIC"."STUDY_PLAN" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_2" FOREIGN KEY("SUBJECT_ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_2" REFERENCES "PUBLIC"."SUBJECT"("ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_BB" NOCHECK', 13);
INSERT INTO INFORMATION_SCHEMA.CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, UNIQUE_INDEX_NAME, CHECK_EXPRESSION, COLUMN_LIST, REMARKS, SQL, ID) VALUES ('DEFAULT', 'PUBLIC', 'CONSTRAINT_D', 'REFERENTIAL', 'DEFAULT', 'PUBLIC', 'JOURNAL', 'CONSTRAINT_INDEX_BA', null, 'STUDENT_ID', '', 'ALTER TABLE "PUBLIC"."JOURNAL" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_D" FOREIGN KEY("STUDENT_ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_D" REFERENCES "PUBLIC"."STUDENT"("ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_BA" NOCHECK', 21);
INSERT INTO INFORMATION_SCHEMA.CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, UNIQUE_INDEX_NAME, CHECK_EXPRESSION, COLUMN_LIST, REMARKS, SQL, ID) VALUES ('DEFAULT', 'PUBLIC', 'CONSTRAINT_D6', 'REFERENTIAL', 'DEFAULT', 'PUBLIC', 'JOURNAL', 'CONSTRAINT_INDEX_26F', null, 'STUDY_PLAN_ID', '', 'ALTER TABLE "PUBLIC"."JOURNAL" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_D6" FOREIGN KEY("STUDY_PLAN_ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_D6" REFERENCES "PUBLIC"."STUDY_PLAN"("ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_26F" NOCHECK', 24);
INSERT INTO INFORMATION_SCHEMA.CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, UNIQUE_INDEX_NAME, CHECK_EXPRESSION, COLUMN_LIST, REMARKS, SQL, ID) VALUES ('DEFAULT', 'PUBLIC', 'CONSTRAINT_26', 'REFERENTIAL', 'DEFAULT', 'PUBLIC', 'STUDY_PLAN', 'CONSTRAINT_INDEX_A', null, 'EXAM_TYPE_ID', '', 'ALTER TABLE "PUBLIC"."STUDY_PLAN" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_26" FOREIGN KEY("EXAM_TYPE_ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_26" REFERENCES "PUBLIC"."EXAM_TYPE"("ID") INDEX "PUBLIC"."CONSTRAINT_INDEX_A" NOCHECK', 16);