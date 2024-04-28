cd eureka-server
sudo docker build -t 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:eureka-server-latest .
sudo docker push 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:eureka-server-latest


cd ../policy-management-backend
sudo docker build -t 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:policy-management-backend-latest .
sudo docker push 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:policy-management-backend-latest


cd ../policy-management-frontend
sudo docker build -t 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:policy-management-frontend-latest .
sudo docker push 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:policy-management-frontend-latest


cd ../risk-management-client
sudo docker build -t 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:risk-management-client-latest .
sudo docker push 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:risk-management-client-latest


cd ../risk-management-server
sudo docker build -t 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:risk-management-server-latest .
sudo docker push 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:risk-management-server-latest


cd ../spring-boot-admin
sudo docker build -t 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:spring-boot-admin-latest .
sudo docker push 613825731605.dkr.ecr.eu-central-1.amazonaws.com/lakeside:spring-boot-admin-latest
