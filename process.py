log_file = open("um-server-01.txt") #opening the information needed to reference (server txt)


def sales_reports(log_file): # defining sales reprts with our inforamtion listed above
    for line in log_file: #looping over all files in log_file
        line = line.rstrip() #stripping file of line end inforamtion included in .txt 
        day = line[0:3] #referencing particular line information (quantity)
        if day == "Mon": #defining we are looking for monday info
            print(line) # printing what we just asked for


sales_reports(log_file) #showing info in terminal
