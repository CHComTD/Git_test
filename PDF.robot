***Settings***
Library    RPA.PDF

***Tasks***
Add files to pdf
    ${files}=    Create List
    ...    ${TESTDATA_DIR}${/}invoice.pdf
    ...    ${TESTDATA_DIR}${/}approved.png:align=center
    ...    ${TESTDATA_DIR}${/}robot.pdf:1
    ...    ${TESTDATA_DIR}${/}approved.png:x=0,y=0
    ...    ${TESTDATA_DIR}${/}robot.pdf:2-10,15
    ...    ${TESTDATA_DIR}${/}approved.png
    ...    ${TESTDATA_DIR}${/}landscape_image.png:rotate=-90,orientation=L
    ...    ${TESTDATA_DIR}${/}landscape_image.png:format=Letter
    Add Files To PDF    ${files}    newdoc.pdf