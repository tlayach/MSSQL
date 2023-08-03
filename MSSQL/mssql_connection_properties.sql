SELECT CONNECTIONPROPERTY('NET_TRANSPORT') AS NET_TRANSPORT,
  CONNECTIONPROPERTY('PROTOCOL_TYPE') AS PROTOCOL_TYPE,
  CONNECTIONPROPERTY('AUTH_SCHEME') AS AUTH_SCHEME,
  CONNECTIONPROPERTY('LOCAL_NET_ADDRESS') AS LOCAL_NET_ADDRESS,
  CONNECTIONPROPERTY('LOCAL_TCP_PORT') AS LOCAL_TCP_PORT,
  CONNECTIONPROPERTY('CLIENT_NET_ADDRESS') AS CLIENT_NET_ADDRESS,
  CONNECTIONPROPERTY('PHYSICAL_NET_TRANSPORT') AS PHYSICAL_NET_TRANSPORT,
  SERVERPROPERTY('MACHINENAME') AS MACHINE_NAME,
  SERVERPROPERTY('SERVERNAME') AS SERVER_NAME
