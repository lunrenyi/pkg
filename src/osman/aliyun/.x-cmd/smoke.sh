pkg:info "aliyun"
aliyun(){
    local arch
    local osname
    arch="$(___x_cmd_os arch)"
    osname="$(___x_cmd_os name)"

    x assert stdout ' eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/aliyun.${osname}.${arch} --help' <<A
Alibaba Cloud Command Line Interface Version 3.0.121

Usage:
  aliyun <product> <operation> [--parameter1 value1 --parameter2 value2 ...]

Flags:
  --mode               use `--mode {AK|StsToken|RamRoleArn|EcsRamRole|RsaKeyPair|RamRoleArnWithRoleName}` to assign authenticate mode
  --profile,-p         use `--profile <profileName>` to select profile
  --language           use `--language [en|zh]` to assign language
  --region             use `--region <regionId>` to assign region
  --config-path        use `--config-path` to specify the configuration file path
  --access-key-id      use `--access-key-id <AccessKeyId>` to assign AccessKeyId, required in AK/StsToken/RamRoleArn mode
  --access-key-secret  use `--access-key-secret <AccessKeySecret>` to assign AccessKeySecret
  --sts-token          use `--sts-token <StsToken>` to assign StsToken
  --sts-region         use `--sts-region <StsRegion>` to assign StsRegion
  --ram-role-name      use `--ram-role-name <RamRoleName>` to assign RamRoleName
  --ram-role-arn       use `--ram-role-arn <RamRoleArn>` to assign RamRoleArn
  --role-session-name  use `--role-session-name <RoleSessionName>` to assign RoleSessionName
  --private-key        use `--private-key <PrivateKey>` to assign RSA PrivateKey
  --key-pair-name      use `--key-pair-name <KeyPairName>` to assign KeyPairName
  --read-timeout       use `--read-timeout <seconds>` to set I/O timeout(seconds)
  --connect-timeout    use `--connect-timeout <seconds>` to set connect timeout(seconds)
  --retry-count        use `--retry-count <count>` to set retry count
  --skip-secure-verify use `--skip-secure-verify` to skip https certification validate [Not recommended]
  --expired-seconds    use `--expired-seconds <seconds>` to specify expiration time
  --process-command    use `--process-command <ProcessCommand>` to specify external program execution command
  --secure             use `--secure` to force https
  --force              use `--force` to skip api and parameters check
  --endpoint           use `--endpoint <endpoint>` to assign endpoint
  --version            use `--version <YYYY-MM-DD>` to assign product api version
  --header             use `--header X-foo=bar` to add custom HTTP header, repeatable
  --body               use `--body $(cat foo.json)` to assign http body in RESTful call
  --pager              use `--pager` to merge pages for pageable APIs
  --output,-o          use `--output cols=Field1,Field2 [rows=jmesPath]` to print output as table
  --waiter             use `--waiter expr=<jmesPath> to=<value>` to pull api until result equal to expected value
  --dryrun             add `--dryrun` to validate and print request without running.
  --quiet,-q           add `--quiet` to hide normal output
  --help               print help

Sample:
  aliyun ecs DescribeRegions

Products:
  arms               Application Real-Time Monitoring Service
  actiontrail        Action Trail
  agency             agency
  alidns             Alibaba Cloud DNS
  batchcompute       BatchCompute
  bssopenapi         bssopenapi
  ccc                cloud call center
  cs                 Container Service
  csb                Cloud Service Bus
  cdn                Alibaba Cloud CDN
  cds                CodePipeline
  chatbot            BeeBot
  cloudapi           API Gateway
  cloudphoto         Cloud Photos
  cloudauth          ID Verification
  cms                Cloud Monitor
  dds                ApsaraDB for MongoDB
  dm                 Direct Mail
  domain             domain
  domain-intl        domain
  drds               Distributed Relational Database Service
  eci                Elastic Container Instances
  ecs                Elastic Compute Service
  edas               Enterprise Distributed Application Service
  emr                E-MapReduce
  ess                Auto Scaling
  green              Alibaba Content Security Service
  hpc                Alibaba Cloud HPC
  httpdns            HttpDNS
  itaas              Cloud Display
  iot                Alibaba Cloud IoT
  kms                Key Management Service
  mts                ApsaraVideo for Media Processing
  nas                Network Attached Storage
  ons                Message Queue
  ots                Table Store
  push               Alibaba Cloud Mobile Push
  qualitycheck       Smart Conversation Analysis
  r-kvstore          ApsaraDB for Redis
  ros                Resource Orchestration Service
  ram                Resource Access Management
  rds                ApsaraDB for RDS
  resourcemanager    Resource Management
  sas-api            Situation Awareness Service
  slb                Server Load Balancer
  sts                Resource Access Management
  vpc                Virtual Private Cloud
  aegis              Server Guard
  cloudwf            CloudAP
  cr                 Container Registry
  elasticsearch      elasticsearch
  facebody           Visual Intelligence API
  fnf                FunctionFlow
  goodstech          Visual Intelligence API
  imageaudit         Visual Intelligence API
  imageenhan         Visual Intelligence API
  imagerecog         Visual Intelligence API
  imageseg           Visual Intelligence API
  jaq                Mobile Security
  live               ApsaraVideo for Live
  objectdet          Visual Intelligence API
  ocr                Visual Intelligence API
  oos                Operation Orchestration Service
  polardb            ApsaraDB for POLARDB
  sae                Serverless App Engine
  smc                Server Migration Center
  vod                ApsaraVideo for VOD
  waf-openapi        Web Application Firewall
  ens                Edge Node Service
  ledgerdb           LedgerDB
  pvtz               PrivateZone
  servicemesh        Alibaba Cloud Service Mesh
  alikafka           MQ for Kafka
  cas                SSL Service
  cbn                Cloud Enterprise Network
  dcdn               Dynamic Route for CDN
  ddoscoo            BGP-line Anti-DDoS Pro
  ddospro            Anti-DDoS Pro
  dms-enterprise     Data Management
  dts                Data Transmission
  gpdb               AnalyticDB for PostgreSQL
  hbase              ApsaraDB for HBase
  petadata           HybridDB for MySQL
  scdn               scdn
  sls                Log Service
  yundun-bastionhost bastionhost
  config             CloudConfig
  ims                RAM Identity Management Service
  sales
  ga                 Global Acceleration
  fc-open            Function Compute
  adb                AnalyticDB for MySQL
  sas                Security Center
  alb                Application Load Balancer
  quotas             Quotas
  cloudsso           RAM-CloudSSO
  ehpc               Elastic High Performance Computing
  privatelink        Private Link
  adcp               Alibaba Cloud Distributed Cloud Container Platform

Use `aliyun --help` for more information.
A
}
aliyun
