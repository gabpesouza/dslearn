INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');


INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Spring', 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 'https://inpaonline.com.br/wp-content/uploads/2019/10/online-course-8-899132.png');
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-05-23T20:50:05Z', TIMESTAMP WITH TIME ZONE '2021-05-23T20:50:05Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-23T20:50:05Z', TIMESTAMP WITH TIME ZONE '2021-12-23T20:50:05Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Crud', 'Fazendo um crud com spring', 1, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas da turma', 3, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Introducao a TDD', 1, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Testes unitarios', 2, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Teste de integracao', 3, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 1, 2);
