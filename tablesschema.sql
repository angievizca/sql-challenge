CREATE TABLE "departments" (
  "dept_no" integer NOT NULL,
  "dept_name" character varying(30) NOT NULL,
  PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_emp" (
  "emp_no" integer NOT NULL,
  "dept_no" integer NOT NULL,
  "from_date" date,
  "to_date" date,
  PRIMARY KEY ("emp_no")
);

CREATE INDEX "FK" ON  "dept_emp" ("dept_no");

CREATE TABLE "salaries" (
  "emp_no" integer NOT NULL,
  "salary" integer NOT NULL,
  "from_date" date,
  "to_date" date,
  PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" (
  "emp_no" integer NOT NULL,
  "title" character varying(30) NOT NULL,
  "from_date" date,
  "to_date" date,
  PRIMARY KEY ("emp_no")
);

CREATE TABLE "dept_manager" (
  "dept_no" integer NOT NULL,
  "emp_no" integer NOT NULL,
  "from_date" date,
  "to_date" date,
  PRIMARY KEY ("emp_no")
);

CREATE INDEX "FK" ON  "dept_manager" ("dept_no");

CREATE TABLE "employees" (
  "emp_no" integer NOY NULL,
  "birth_date" date,
  "first_name" character varying(30) NOT NULL,
  "last_name" character varying(30) NOT NULL,
  "gender" character varying(10),
  "hire_date" date,
  PRIMARY KEY ("emp_no")
);
