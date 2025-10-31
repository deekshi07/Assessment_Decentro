# Assessment_Decentro
Task: Automation Testing for APIs
# API Automation Tests using Robot Framework

> Overview

This project automates API testing for sample endpoints provided by Reqres.in
 using the Robot Framework and RequestsLibrary.
It validates various HTTP methods — GET, POST, and PUT — through multiple positive and negative test cases.

The goal is to ensure the APIs return the expected responses, status codes, and JSON structures.

> Setup Instructions
1️. Clone the Repository
git clone https://github.com/deekshi07/Assessment_Decentro.git
cd api-automation-tests

2️. Create a Virtual Environment (Optional but Recommended)
python -m venv venv
source venv/bin/activate     # For macOS/Linux
venv\Scripts\activate        # For Windows

3️. Install Dependencies
pip install -r requirements.txt


requirements.txt

robotframework
robotframework-requests

> Folder Structure
api-automation-tests/
│
├── tests/
│   ├── get_user_test.robot
│   ├── post_user_test.robot
│   └── put_user_test.robot
│
├── resources/
│   └── keywords.robot
│
├── requirements.txt
└── README.md

 Test Execution
▶ Run All Tests
robot tests/

▶ Run a Specific Test File
robot tests/get_user_test.robot

▶ Alternative (If robot command not found)
python -m robot tests/


After execution, Robot Framework generates:

 report.html → Summary of all test cases

 log.html → Detailed execution logs

Open these files in your browser to view detailed results.

 > Endpoints Tested (from Reqres.in)
Method	Endpoint	Description	Expected Status
GET	/api/users/2	Retrieve an existing user	200
GET	/api/users/23	Retrieve non-existing user	404
POST	/api/users	Create a new user	201
PUT	/api/users/2	Update user details	200
PUT	/api/users/9999	Update invalid user	200
 Test Scenarios Covered
GET Tests

> Fetch valid user → Expected 200

 Fetch invalid user → Expected 404

POST Tests

> Create user with valid data → Expected 201

 Create user with empty body → Expected 201

PUT Tests

> Update existing user → Expected 200

 Update invalid user → Expected 200

 Libraries Used

Robot Framework

RequestsLibrary

> Example Test Report

After running tests, you’ll see something like this:


API Automation Test Suite
==============================================================================
GET User Test                                                             | PASS |
POST User Test                                                            | PASS |
PUT User Test                                                             | PASS |
------------------------------------------------------------------------------
Output:  output.xml
Log:     log.html
Report:  report.html
==============================================================================


 Author

Deekshith S J
sjdeekshith5@gmail.com

 Reqres.in

Final Notes

> Designed for API validation using Robot Framework
> Easy to extend for new endpoints
> Clean documentation and test report generation
