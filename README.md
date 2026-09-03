# Disaster Recovery System on AWS Cloud

## Project Overview

This project demonstrates the design and implementation of a disaster recovery system for a web application using AWS cloud services.

The primary application is hosted in the Mumbai AWS Region, while the disaster recovery environment is maintained in the Singapore AWS Region.

## Objective

- Design a disaster recovery plan for a web application.
- Implement multi-region database backup.
- Configure a DR web server in another AWS Region.
- Simulate a primary server failure.
- Perform failover to the DR environment.
- Analyze Recovery Time Objective (RTO).
- Monitor resources using Amazon CloudWatch.

## AWS Architecture

### Primary Region
Mumbai (`ap-south-1`)

- Amazon EC2 – Primary Web Server
- Amazon RDS MySQL – Primary Database
- RDS Snapshot

### Disaster Recovery Region
Singapore (`ap-southeast-1`)

- Amazon EC2 – DR Web Server
- Amazon RDS – DR Database
- Cross-region RDS Snapshot

## AWS Services Used

- Amazon EC2
- Amazon RDS
- Amazon CloudWatch
- AWS Regions
- RDS Snapshots
- Ubuntu
- Apache Web Server

## Disaster Recovery Process

1. Deploy the primary web server in Mumbai.
2. Deploy the MySQL database using Amazon RDS.
3. Configure automated RDS backups.
4. Create a manual RDS snapshot.
5. Copy the snapshot from Mumbai to Singapore.
6. Restore the snapshot as a DR database in Singapore.
7. Deploy a DR web server in Singapore.
8. Configure Apache on the DR server.
9. Simulate a disaster by stopping the Mumbai EC2 instance.
10. Access the application from the Singapore DR server.
11. Execute the failover checking script.
12. Monitor the infrastructure using CloudWatch.

## Automated Failover

A Bash script is included in this repository to check whether the primary Mumbai web server is available.

If the primary server is unavailable, the script reports that the Singapore DR server should be used.

File:

`failover.sh`

## RTO Analysis

Recovery Time Objective (RTO) is the time required to restore application availability after a failure.

In this project, RTO is measured from the time the primary Mumbai server is stopped until the DR application in Singapore becomes accessible.

**Observed RTO:** Approximately 05 minutes.

## Disaster Simulation

The Mumbai primary EC2 server was stopped to simulate a failure.

The Singapore DR server was then accessed successfully, demonstrating disaster recovery capability.

## Monitoring

Amazon CloudWatch was used to monitor:

- EC2 CPU Utilization
- RDS CPU Utilization
- Database metrics
- EC2 health metrics

## Result

The disaster recovery environment successfully provided an alternate application server in the Singapore AWS Region after the primary Mumbai server was stopped.

## Conclusion

This project demonstrates a basic multi-region disaster recovery architecture on AWS using EC2, Amazon RDS, RDS cross-region snapshots, CloudWatch monitoring and an automated failover checking script.

## Author

Cloud Computing Student
