-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/y5o4Nx
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Determine the relations
-- replace /relationship/ with the type of relationship to corresponding table

CREATE TABLE "departments" (
    "dept_no" VARCHAR(255)   NOT NULL,
    "dept_name" INTEGER   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL,
    "birth_date" VARCHAR(255)   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "gender" VARCHAR(255)   NOT NULL,
    "hire_date" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR(255)   NOT NULL,
    "from_date" VARCHAR(255)   NOT NULL,
    "to_date" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(255)   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "from_date" VARCHAR(255)   NOT NULL,
    "to_date" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    "from_date" VARCHAR(255)   NOT NULL,
    "to_date" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "title" (
    "emp_no" INTEGER   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    "from_date" VARCHAR(255)   NOT NULL,
    "to_date" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_title" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "title" ADD CONSTRAINT "fk_title_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

