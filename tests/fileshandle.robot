*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Write And Read File
    [Documentation]    Create a file, write text, and read the content.
    Create File    sample.txt    Hello, this is a sample file.
    ${content}=    Get File    sample.txt
    Log    Content of the file is: ${content}
    Remove File    sample.txt


# Reading Data from excel  =>
# *** Settings ***
# Library    RPA.Excel.Application

# *** Variables ***
# ${EXCEL_FILE}    user_data.xlsx

# *** Test Cases ***
# Data-Driven Testing with Excel
#     Open Workbook    ${EXCEL_FILE}
#     ${sheet}=    Read Worksheet    header=True
#     FOR    ${row}    IN    @{sheet}
#         Log    Username: ${row['Username']}, Email: ${row['Email']}
#     END
#     Close Workbook



#  Reading Data from csv =>
# *** Settings ***
# Library    OperatingSystem

# *** Variables ***
# ${CSV_FILE}    users.csv

# *** Test Cases ***
# Data-Driven Testing with CSV
#     @{data}=    Read CSV File    ${CSV_FILE}
#     FOR    ${row}    IN    @{data}
#         Log    User: ${row[0]}, Email: ${row[1]}
#     END
