resource "aws_cognito_user_pool" "fiap_tech_challenge_user_pool" {
  name = "clientes_pool_2"

  username_configuration {
    case_sensitive = false
  }

  tags = {
    Name = "fiap_soat_tech_challenge_user_pool"
  }
}

resource "aws_cognito_user_pool_client" "fiap_tech_challenge_user_pool_client" {
  name = "pool_client"

  user_pool_id = aws_cognito_user_pool.fiap_tech_challenge_user_pool.id
}
