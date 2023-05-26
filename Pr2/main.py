bad_hosts = [] # нежелательные хосты
with open('hosts') as file:
    for line in file.readlines()[40:]:
        if line[0] == '#':
            continue
        try:
            bad_hosts.append(line.split()[1])
        except IndexError:
            continue
        
hosts = [] # все хосты
with open('dns.log') as file:
    for line in file.readlines():
        if line[0] == '#':
            continue
        try:
            hosts.append(line.split()[9])
        except IndexError:
            continue

bad_count = len([host for host in hosts if host in bad_hosts])
percentile = round(bad_count/len(hosts),3)*100
print("Количество нежелательных хостов: {}.".format(str(bad_count)),
"Процент нежелательного трафика: {}%.".format(str(percentile)),sep='\n')
