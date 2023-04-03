
  name       = "mydb-subnet-groups"
  subnet_ids = ["subnet-061c5aa91120d6221", "subnet-032fb21e1ee472561"]
  identifier          = "ourdb"
  engine              = "postgres"
  engine_version      = "12.7"
  instance_class      = "db.t3.micro"
  allocated_storage   =  10
  storage_type        = "gp2"
  storage_encrypted   = true
  db_subnet_group_name = "mydb-subnet-groups"
  db_name                = "ourdatabase"
  username            = "naga"
  password            = "password"
  parameter_group_name = "default.postgres12"
  publicly_accessible = true
