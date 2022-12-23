# for element in range(1, 10):
#     print(element)


# list_1 = ['python', 'java', 'c']
# for element in list_1:
#     print(element)

##We can write multiple testcase, when we execute all the testcases will get executed, if we dont want all the testcases
##to execute, we can give the tags.

##To execute the tags, in the terminal = robot --include <tagname> Directoryname\file_name.robot
## or  robot -i <tagname> Directoryname\file_name.robot

##If we want to include multiple tags
## robot -i <tagname> -i <tagname>  Directoryname\file_name.robot

##if we dont give ant tag name = robot Directoryname\file_name.robot , by default it will execute all testcases

##if we want to exclude any testcase = robot -e <tagname> Directoryname\file_name.robot
##if we want to exclude multiple testcases = robot -e <tagname> -e <tagname> Directoryname\file_name.robot

##if we want to include testcase and exclude testcase = robot -i <tagname> -e <tagname> Directoryname\file_name.robot
