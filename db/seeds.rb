Picture.create!([
  {title: "lalala", user_id: 1, file_file_name: "inv.jpg", file_content_type: "image/jpeg", file_file_size: 138628, file_updated_at: "2014-06-27 20:46:43"},
  {title: "ugly Web Browser", user_id: 1, file_file_name: "Captura_de_pantalla_de_2014-04-10_21_33_17.png", file_content_type: "image/png", file_file_size: 57409, file_updated_at: "2014-06-27 20:47:01"},
  {title: "trovu", user_id: 2, file_file_name: "trovu1.png", file_content_type: "image/png", file_file_size: 330350, file_updated_at: "2014-06-27 20:47:54"},
  {title: "lalala", user_id: 2, file_file_name: "Captura_de_pantalla_de_2014-05-15_08_31_19.png", file_content_type: "image/png", file_file_size: 1145072, file_updated_at: "2014-06-27 20:48:07"}
])
User.create!([
  {mail: nil, name: "Diego", password: "galleta"},
  {mail: nil, name: "Alison", password: "pique"}
])
