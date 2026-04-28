# Criar empresas
company1 = Company.find_or_create_by!(name: "TechNova Solutions")
company2 = Company.find_or_create_by!(name: "StellarForge Industries")

# Criar usuários
User.find_or_create_by!(email: "victor@gmail.com") do |user|
  user.password = "password123"
  user.company_id = company1.id
end

User.find_or_create_by!(email: "afonso@gmail.com") do |user|
  user.password = "password123"
  user.company_id = company1.id
end

User.find_or_create_by!(email: "victorhsc@gmail.com") do |user|
  user.password = "password123"
  user.company_id = company2.id
end
