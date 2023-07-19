#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

# Task - You should display a numbered list of the services you offer before the first prompt for input, each with the format #) <service>. For example, 1) cut, where 1 is the service_id
#get the services list
AVAILABLE_SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
#display all services in the table
echo "$AVAILABLE_SERVICES" | while read SERVICE_ID BAR NAME
do
  echo "$SERVICE_ID) $NAME"
done

# Task - If you pick a service that doesn't exist, you should be shown the same list of services again
echo -e "\n Select a service:"
read SERVICE_ID_SELECTED
while [[ $SERVICE_ID_SELECTED != 1 && $SERVICE_ID_SELECTED != 2 && $SERVICE_ID_SELECTED != 3 ]]
do
  AVAILABLE_SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
  #display all services in the table
  echo "$AVAILABLE_SERVICES" | while read SERVICE_ID BAR NAME
  do
    echo "$SERVICE_ID) $NAME"
  done
  echo -e "\n Select a service:"
  read SERVICE_ID_SELECTED
done

# Task - Your script should prompt users to enter a service_id, phone number, a name if they aren’t already a customer, and a time. You should use read to read these inputs into variables named SERVICE_ID_SELECTED, CUSTOMER_PHONE, CUSTOMER_NAME, and SERVICE_TIME
# get customer info
echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE
CUSTOMER_PHONE_EXISTS=$($PSQL "SELECT phone FROM customers WHERE phone = '$CUSTOMER_PHONE'")

# Task - If a phone number entered doesn’t exist, you should get the customers name and enter it, and the phone number, into the customers table
# if customer doesn't exist
if [[ -z $CUSTOMER_PHONE_EXISTS ]]
then
  # get new customer name
  echo -e "\nWhat's your name?"
  read CUSTOMER_NAME
  # insert new customer
  INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')") 

  echo -e "\nWhen do you want the service to be scheduled?"
  read SERVICE_TIME

  # Task - You can create a row in the appointments table by running your script and entering 1, 555-555-5555, Fabio, 10:30 at each request for input if that phone number isn’t in the customers table. The row should have the customer_id for that customer, and the service_id for the service entered
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES('$CUSTOMER_ID', '$SERVICE_ID_SELECTED', '$SERVICE_TIME')") 
 
# Task - You can create another row in the appointments table by running your script and entering 2, 555-555-5555, 11am at each request for input if that phone number is already in the customers table. The row should have the customer_id for that customer, and the service_id for the service entered
else
  echo -e "\nWhen do you want the service to be scheduled?"
  read SERVICE_TIME
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES('$CUSTOMER_ID', '$SERVICE_ID_SELECTED', '$SERVICE_TIME')") 
fi

# Task - After an appointment is successfully added, you should output the message I have put you down for a <service> at <time>, <name>. 
SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = '$SERVICE_ID_SELECTED'")
CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
echo -e "I have put you down for a$SERVICE_NAME at $SERVICE_TIME,$CUSTOMER_NAME."