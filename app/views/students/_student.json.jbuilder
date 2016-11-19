json.extract! student, :id, :cpf, :name, :created_at, :updated_at
json.url student_url(student, format: :json)